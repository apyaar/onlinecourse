<?php
session_start();
include('includes/config.php');

if (strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
    exit();
}

if (isset($_POST['submit'])) {
    // Get the course name from the form data
    $courseName = $_POST['course_name'];

    // Prepare the file name and location where the report will be downloaded
    $filename = $courseName . '_report.csv';
    $filepath = 'C:\xampp\htdocs\onlinecourse2\onlinecourse-1\Reports' . $filename;

    // Create a file pointer and open the file for writing
    $file = fopen($filepath, 'w');

    // Write the header row in the CSV file
    fputcsv($file, array('Student Reg No', 'Student Name'));

    // Fetch the data from the database
    
    $sql = "SELECT s.studentRegno, s.studentName
            FROM courses_allocated AS c
            INNER JOIN students AS s ON c.studentRegno = s.studentRegno
            WHERE c.course_type = 'Elective' AND c.course_name = :courseName";

    $stmt = $dbh->prepare($sql);
    $stmt->bindParam(':courseName', $courseName, PDO::PARAM_STR);
    $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo('Data Fetched');

    // Write the data rows in the CSV file
    foreach ($rows as $row) {
        fputcsv($file, $row);
    }

    // Close the file pointer
    fclose($file);

    // Send the file as a download to the user
    header('Content-Type: application/csv');
    header('Content-Disposition: attachment; filename="' . $filename . '"');
    header('Pragma: no-cache');
    readfile($filepath);
    exit();
}
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Admin | Student Registration</title>
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
                        <h1 class="page-head-line">Report Generation  </h1>
                    </div>
                </div>
                <div class="row" >
                  <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                        Report Generation
                        </div>
<font color="green" align="center"><?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?></font>


                        <div class="panel-body">
                        <form action="report-generation.php" method

                         <div class="form-group">
        <label for="course_code">Course Code</label>
        <input type="text" class="form-control" id="course_code" name="course_code" required>
    </div>
    <div class="form-group">
        <label for="course_name">Course Name</label>
        <input type="text" class="form-control" id="course_name" name="course_name" required>
    </div>
    </div?
    <button type="submit" name="submit" class="btn btn-primary">Generate Report</button>
</form>
</body>

</html>



