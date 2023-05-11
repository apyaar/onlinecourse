<?php
// $con = mysqli_connect("localhost", "username", "password", "database");
// if (!$con) {
//     die("Connection failed: " . mysqli_connect_error());
// }

include('includes/config.php');

$courseName = mysqli_real_escape_string($con, $_GET["courseName"]);
$sql = "SELECT course_code FROM course WHERE courseName='$courseName'";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
echo str_replace('&ndash;', '–', htmlentities($row['course_code']));

$courseCode = htmlentities($row["course_code"]);

// echo $courseCode;

mysqli_close($con);
?>
