<?php

if(!isset($_POST['submit']) || $_POST['submit']!="Update")  exit();


$sql="UPDATE classes SET `name`=?,`department`=?, `days`=?, `start`=?, `end`=? WHERE `course_id`=?;";

include "../CONFIG.php";
$mysqli=new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);

if($mysqli->connect_errno) exit();



$stmt=$mysqli->stmt_init();

if(!$stmt->prepare($sql) ){
	echo "Invalid statement";
	exit();
}

$stmt->bind_param("ssssss", $_POST['name'], $_POST['department'], $_POST['days'], $_POST['startTime'], $_POST['endTime'], $_POST['courseID'] );
$stmt->execute();
echo "Update successful";
echo '<br><br><a href="lab9.php">Search for Classes here</a>';


$stmt->close();
$mysqli->close();
?>
