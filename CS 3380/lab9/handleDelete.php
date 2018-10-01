<?php

include "lab9.php";
include "../CONFIG.php";
$mysqli=new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);

if($mysqli->connect_errno) exit();



if(isset($_POST['delete']) && $_POST['delete']=="Delete"){
	$sql="DELETE from classes where `course_id`='" . $_POST['courseID'] . "';";
	if($mysqli->query($sql)===TRUE) echo "Course Deleted";
	else echo "Course not deleted";
}

$mysqli->close();
?>
