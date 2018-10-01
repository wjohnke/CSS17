<?php
session_start();

if(!isset($_SESSION['permission'])){
	header("Location: Clogin.php");
	exit();
}

include "../Secure/database.php";
$mysqli=new mysqli($HOST, $USERNAME, $PASSWORD, $DBMANE);

$query=prepareQuery();
if(!insertRecord($query, $mysqli)){
	echo "Log not created, contact administrator";
}

$mysqli->close();
header("Location: index.html");


function prepareQuery(){
	$localTime=date("Y-m-d H:i:s");
	$ipaddress=empty($_SERVER['REMOTE_ADDR']) ? "255.255.255.255" : $_SERVER['REMOTE_ADDR'];
	//TODO
	$numCars=empty($_POST['???????????????????????????']) ? 0 : $_POST['??????????????????????'];
	$carType=empty($_POST['carType??????????????']) ? "" : $_POST['carType????????'];
	
	
	$query="INSERT INTO `CUSTOMER_LOG` VALUES ($ipaddress, $localTime, $numCars, $carType);";
	
	return $query;
}

function insertRecord($query, $mysqli){
	if($mysqli->query($query)) return true;
}


?>
