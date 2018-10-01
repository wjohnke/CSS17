<!DOCTYPE html>
<?php
	session_start();
	if($_SESSION['permission'] == "customer"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/search.php');
	}
	if($_SESSION['permission'] == "conductor"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Conductor.php');
	}
	if($_SESSION['permission'] == "engineer"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Engineer.php');
	}
	if(!$_SESSION['permission']){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Slogin.php');
	}
	if($_SESSION){
		echo "<p align='right'><font color='red'>You are logged in as " . $_SESSION['permission'] . ". </font></p>";
	}
?>
<html>
<head>
<title>Register Account</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {margin:auto;}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
</head>
<body>
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Missouri<br>Rails 🚂</b></h3>
  </div>
<div class="w3-bar-block">
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/register.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Create Account</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Clogin.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Customer Login</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/logout.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Logout</a>
</div>
</nav>
<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">🚂</a>
  <span>Missouri Rails</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<center>
<form action="" method="POST">
<br>
<br>
<br>
Employee Number:<br>
<font color="red">NOTE:</font>
Admin:1000-1999 Conductor:2000-2999 Engineer:3000-3999<br>
<input type="text" name="employeeNum" required="required" Placeholder="New Employee Number" style="text-align: center" maxlenght="10">
<br>
<br>
Employee Password:<br>
<input type="text" name="password" required="required" Placeholder="Password" style="text-align: center"maxlenght="10">
<br>
<br>
<input type="submit" name="submit" value="Submit">
<br>
<br>
</form>
</center>
<?php
	include ('../Secure/database.php');
	
	$mysqli = mysqli_connect($HOST, $USERNAME, $PASSWORD, $DBMANE);
	
	if($mysqli->connect_errno){
		echo "Connection fail line 5";
		exit();
	}
	if(isset($_POST['submit'])){
		$adminLowRange="1000";
		$adminHighRange="1900";
		$conductorLowRange="2000";
		$conductorHighRange="2999";
		$engineerLowRange="3000";
		$engineerHighRange="3999";
		$code = htmlspecialchars($_POST['employeeNum'],ENT_NOQUOTES);
		$password = htmlspecialchars($_POST['password'],ENT_NOQUOTES);
		
		$query = "SELECT * FROM `EMPLOYEE` WHERE `Employee_Id` = ?";
		if($code < $adminLowRange || $engineerHighRange < $code){
			echo "<br><center><font color='red'>Does not fit employee number criteria</font></center>";
			exit();
		}
		$stmt = $mysqli->stmt_init();
		if(!$stmt->prepare($query)){
			exit();
		}
		$stmt->bind_param("s",$code);
		$stmt->execute();
		$result = $stmt->get_result();
		$numberReturn = $result->num_rows;
		
		if($numberReturn == 0){
			$query = "INSERT INTO `EMPLOYEE` VALUES(?,?,null,null)";
			$stmt = $mysqli->stmt_init();
			if(!$stmt->prepare($query)){
				echo "Couldn't prepare";
				exit();
			}
			$hash = password_hash($password, PASSWORD_DEFAULT);
			$stmt->bind_param("ss",$code, $hash);
			$stmt->execute();
			if(($adminLowRange <= $code) && ($code <= $adminHighRange)){
					$query = "INSERT INTO `ADMIN`(Employee_Id)VALUE(?);";
					$stmt = $mysqli->stmt_init();
					$stmt->prepare($query);
					$stmt->bind_param("s",$code);
					$stmt->execute();
				}
			if(($conductorLowRange <= $code) && ($code <= $conductorHighRange)){
				$query = "INSERT INTO `CONDUCTOR`(Employee_Id)VALUE(?);";
				$stmt = $mysqli->stmt_init();
				$stmt->prepare($query);
				$stmt->bind_param("s",$code);
				$stmt->execute();
				}
			if(($engineerLowRange <= $code) && ($code <= $engineerHighRange)){
				$query = "INSERT INTO `ENGINEER`(Employee_Id)VALUE(?);";
				$stmt = $mysqli->stmt_init();
				$stmt->prepare($query);
				$stmt->bind_param("s",$code);
				$stmt->execute();				
				}
			echo "<br><center><font color='red'>Employee " . $code . " was created!</center> <br>";
		}else{
			echo "<br><center><font color='red'>Employee already exists</center><br>";
		}
		
		$stmt->close();
		$mysqli->close();
	}	
?>
<!-- W3.CSS Container -->
<div class="w3-light-grey w3-container w3-padding-32" style="margin-top:170px;padding-right:58px"><p class="w3-left">Powered by Group 13</p>
<a href="Slogin.php" class="w3-right">STAFF LOG IN</a></div>
</body>
</html>