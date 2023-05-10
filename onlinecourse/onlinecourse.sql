Skip to content
Search or jump to…
Pull requests
Issues
Codespaces
Marketplace
Explore
 
@apyaar 
iamkulbhushansingh
/
onlinecourse-1
Public
forked from apyaar/onlinecourse
Fork your own copy of iamkulbhushansingh/onlinecourse-1
Code
Pull requests
Actions
Projects
Security
Insights
Beta Try the new code view
onlinecourse-1/onlinecourse/onlinecourse/admin/allocation.php /
@iamkulbhushansingh
iamkulbhushansingh seats error
Latest commit c0ac790 18 minutes ago
 History
 1 contributor
243 lines (199 sloc)  8.03 KB
 

<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{
if(isset($_POST['submit']))
{
    
    $sql0 =mysqli_query($con,"SELECT * FROM stream WHERE stream_id='".$_POST['stream_idx']."';");
    $row0 = mysqli_fetch_array($sql0);

 //this is for fetching optional core choices from student table since we're only storing stream id from this page
    $sql = mysqli_query($con, "SELECT studentRegno, optional_core_choice_1, optional_core_choice_2, optional_core_choice_3,enrolment_status_optional 
    FROM students
    WHERE stream_id = '".$_POST['stream_idx']."' AND (optional_core_choice_1 IS NOT NULL OR optional_core_choice_2 IS NOT NULL OR optional_core_choice_3 IS NOT NULL) AND enrolment_status_optional=0
    ORDER BY cgpa DESC;");
while($row=mysqli_fetch_array($sql)){

//    var_dump($row);

//since we have only 3 optional cores at max we're not using loop
//if the optional core choice values are not null insert them into allocated courses table and allocate optional core to the student
        if($row['optional_core_choice_1']!=="NULL"){
        $sql1="INSERT INTO courses_allocated (student_reg_no, course_code, course_name, course_type)
        SELECT 
            '".$row['studentRegno']."',
            (SELECT course_code FROM course WHERE courseName = '".$row['optional_core_choice_1']."'),
            '".$row['optional_core_choice_1']."',
            'optional_Core'
        WHERE '".$row['optional_core_choice_1']."' IS NOT NULL;
        ";
        mysqli_query($con,$sql1);
    }


        if($row['optional_core_choice_2']!=="NULL"){
            $sql1="INSERT INTO courses_allocated (student_reg_no, course_code, course_name, course_type)
        SELECT 
            '".$row['studentRegno']."',
            (SELECT course_code FROM course WHERE courseName = '".$row['optional_core_choice_2']."'),
            '".$row['optional_core_choice_2']."',
            'optional_Core'
        WHERE '".$row['optional_core_choice_2']."' IS NOT NULL;
        ";
        mysqli_query($con,$sql1);
        }
        

        if($row['optional_core_choice_3']!=="NULL"){
        $sql1="INSERT INTO courses_allocated (student_reg_no, course_code, course_name, course_type)
        SELECT 
            '".$row['studentRegno']."',
            (SELECT course_code FROM course WHERE courseName = '".$row['optional_core_choice_3']."'),
            '".$row['optional_core_choice_3']."',
            'optional_Core'
        WHERE '".$row['optional_core_choice_3']."' IS NOT NULL;
        ";
        mysqli_query($con,$sql1);
        }
//this is for removing duplicate values if the submit button is clicked more than once
        $sql1="DELETE FROM courses_allocated 
       WHERE courses_allocated_id NOT IN (
            SELECT MIN(courses_allocated_id)
            FROM courses_allocated
            GROUP BY student_reg_no, course_code
       )";
       mysqli_query($con,$sql1);
       

// updating the status of that student that is enrolled
       $sql1= "UPDATE students
       SET enrolment_status_optional=1
       WHERE studentRegno='".$row['studentRegno']."'; ";
       mysqli_query($con,$sql1);
}

       echo '<script>alert("Optional cores allocated.")</script>';
      
}

if(isset($_POST['submitElective']))
{

    $sql=mysqli_query($con,"SELECT * FROM students JOIN elective_preference ON students.studentRegno = elective_preference.studentRegno WHERE students.stream_id = '".$_POST['stream_idx']."' AND students.enrolment_status_elective = 0
    ORDER BY students.cgpa DESC;");
$row=mysqli_fetch_array($sql);

$sql0=mysqli_query($con, "select * from total_no_of_seats where stream_id='".$_POST['stream_idx']."'");
$row0=mysqli_fetch_array($sql0);
// var_dump ($row);

// for ($i = 1; $i <= 19; $i++) {
//     $col_name = 'E'.$i;
//     $temp=$row[$col_name];
//     echo($temp);
//     echo ($row0[$temp]." ");
// }

for ($i = 1; $i <= 19; $i++) {
    $col_name = 'E'.$i;
    $temp=$row[$col_name];
    // echo($temp." ");
    if($row[$col_name]!="NULL" && $row0[$temp]>=1){
       
        $sql1="INSERT INTO courses_allocated (student_reg_no, course_code, course_name, course_type)
        SELECT 
            '".$row['studentRegno']."',
            (SELECT course_code FROM course WHERE courseName = '".$row[$col_name]."'),
            '".$row[$col_name]."',
            'Elective'
        WHERE '".$row[$col_name]."' IS NOT NULL;";
        mysqli_query($con,$sql1);
        echo($temp." ");

        //here is the error 
        // $sql2="UPDATE total_no_of_seats SET $temp=$temp-1 where stream_id='".$_POST['stream_idx']."'" ;
        // mysqli_query($con,$sql2);
        
    }
//    else {$i++;}
}


    //this is for removing duplicate values if the submit button is clicked more than once
    $sqln="DELETE FROM courses_allocated 
    WHERE courses_allocated_id NOT IN (
         SELECT MIN(courses_allocated_id)
         FROM courses_allocated
         GROUP BY student_reg_no, course_code
    )";
    mysqli_query($con,$sqln);
    
    // var_dump($row);
}

?>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Student Profile</title>
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />
    <link href="../assets/css/style.css" rel="stylesheet" />
</head>

<body>
<?php include('includes/header.php');?>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['alogin']!="")
{
 include('includes/menubar.php');
}
 ?>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Student Registration  </h1>
                    </div>
                </div>
                <div class="row" >
                  <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                          Student Registration
                        </div>
<font color="green" align="center"><?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?></font>





                        <div class="panel-body">
                       <form method="post" >
   
                       <div class="form-group">
    <label for="stream_name">Select Stream</label>
    <select class="form-control" name="stream_idx" required="required">
   <option value="">Select Stream</option>   
   <?php 
$sql=mysqli_query($con,"select * from stream");
while($row=mysqli_fetch_array($sql))
{
?>
<option value="<?php echo htmlentities($row['stream_id']);?>"><?php echo htmlentities($row['stream_name']);?></option>
<?php } ?>
    </select> 
   </div> 

 <button type="submit" name="submit" id="submit" class="btn btn-default">Allocate Optional Core</button>
</form>
<br>
<form method="post" >
   
                       <div class="form-group">
    <label for="stream_name">Select Stream</label>
    <select class="form-control" name="stream_idx" required="required">
   <option value="">Select Stream</option>   
   <?php 
$sql=mysqli_query($con,"select * from stream");
while($row=mysqli_fetch_array($sql))
{
?>
<option value="<?php echo htmlentities($row['stream_id']);?>"><?php echo htmlentities($row['stream_name']);?></option>
<?php } ?>
    </select> 
   </div> 

 <button type="submit" name="submitElective" id="submitElective" class="btn btn-default">Allocate Electives</button>
</form>

                            </div>

                            
                            </div>
                    </div>
                  
                </div>

            </div>
        </div>
    </div>
  <?php include('includes/footer.php');?>
    <script src="../assets/js/jquery-1.11.1.js"></script>
    <script src="../assets/js/bootstrap.js"></script>


</body>
</html>
<?php } ?>
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
onlinecourse-1/allocation.php at main · iamkulbhushansingh/onlinecourse-1 