<?php


if(!isset($_POST['submit']) || $_POST['submit']!="insert"){
	exit();
}

$courseID=empty($_POST['courseID']) ? "" : htmlspecialchars($_POST['courseID']);
$department=empty($_POST['department']) ? "" : htmlspecialchars($_POST['department']);
$name=empty($_POST['name']) ? "" : htmlspecialchars($_POST['name']);
$days=$_POST['days'];
$startTime=$_POST['startTime'];
$endTime=$_POST['endTime'];

if($name=="" || $courseID=="" || $department=="") exit();

include "../CONFIG.php";

$mysqli=new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
if($mysqli->connect_errno){
	echo "Database not authorized";
	exit();
}

$sql="SELECT * from classes where name=? AND course_id=? AND department=?;";

$stmt=$mysqli->stmt_init();
if(!($stmt->prepare($sql) )){
	echo "Statement invalid 1";
	exit();
}

$stmt->bind_param("sss", $name, $courseID, $department);
$stmt->execute();
$result=$stmt->get_result();

$exists=$result->num_rows;
if($exists==0){
	$sql="INSERT INTO classes VALUES(?, ?, ?, ?,?, ?);";
	if(!$stmt->prepare($sql)){
		echo "Statement invalid";
		exit();
	}
	$stmt->bind_param("ssssss", $name, $department, $courseID, $startTime, $endTime, $days);
	$stmt->execute();
	echo "Class created";
	echo '<br><br><a href="lab9.php">Search for Classes here</a>';
}

else{
	echo "Class already exists";
	echo '<br><br><a href="lab9.php">Search for Classes here</a>';
}
$stmt->close();
$mysqli->close();







?>
