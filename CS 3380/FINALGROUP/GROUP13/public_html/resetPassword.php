<!DOCTYPE html>
<?php
	session_start();
	if($_SESSION['permission']=='admin' || $_SESSION['permission']=='conductor' || $_SESSION['permission']=='engineer'){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/staffResetPassword.php');
	}
	if(!$_SESSION){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Clogin.php');
	}
	if($_SESSION){
		echo "<p align='right'><font color='red'>You are logged in as " . $_SESSION['permission'] . "and ID number " . $_SESSION['id'] . ". </font></p>";
	}
?>
<html>
<title>Missouri Rails</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Missouri<br>Rails 🚂</b></h3>
  </div>
  <div class="w3-bar-block">
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>	
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

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
  </div>


	<div align="center" style="text-align: center">
	  	<form action="" method="POST">
		Email:<br>
		<input type="text" name="custEmail" placeholder="example@example.com" required="required" style="text-align: center">
		<br><br>
		Old Password:<br>
		<input type="password" name="oldPass" placeholder="Old Password" required="required" style="text-align:center">
		<br><br>
		New Password:<br>
		<input type="password" name="newPass" placeholder="New Password" required="required" style="text-align:center">
		<br>
		<br>
		<input class="button" type="submit" name="submit" value="Change Password"></input>
		<br>
		<br>
	</div>
	</form>

  
  
 <?php
	include ('../Secure/database.php');
	
	$mysqli = mysqli_connect($HOST, $USERNAME, $PASSWORD, $DBMANE);
	
	if($mysqli->connect_errno){
		echo "Connection fail line 5";
		exit();
	}
	
	if(isset($_POST['submit']))
	{
		$user = htmlspecialchars($_POST['custEmail'],ENT_NOQUOTES);
		$word = htmlspecialchars($_POST['oldPass'],ENT_NOQUOTES);
		$hash = password_hash($_POST['newPass'], PASSWORD_DEFAULT);
		$query="SELECT * FROM `CUSTOMER` WHERE `Billing_Email`=?";
		$stmt = $mysqli->stmt_init();
		if(!$stmt->prepare($query)){
			exit();
		}
		$stmt->bind_param("s",$user);
		$stmt->execute();
		$result = $stmt->get_result();
		$count = $result->num_rows;

		if ($count==1)
		{
			$query2 = "SELECT * FROM `CUSTOMER` WHERE `Billing_Email` = ?";
			$stmt = $mysqli->stmt_init();
			if(!$stmt->prepare($query2)){
				exit();
			}
			$stmt->bind_param("s",$user);
			$stmt->execute();
			$result = $stmt->get_result();
			$exists = mysqli_num_rows($result);
			$row = $result->fetch_assoc();
			if(password_verify($word, $row['Password'])){
				$query3="UPDATE `CUSTOMER` SET `Password`=? WHERE `Billing_Email`=?;";
				$stmt = $mysqli->stmt_init();
				if(!$stmt->prepare($query3)){
					echo "<center><h1>Query 3 failed";
					exit();
				}
				$stmt->bind_param("ss",$hash,$user);
				if($stmt->execute()){
				echo "<center><h1>" . $user . "'s password updated!</h1></center>";
				}
				else{
				exit();
				}
			}
			else{
				echo "<br><center><font color='red'>Invalid password<br>Please try again</center>";
			}
		}
		else
		{
			echo "<br><center><font color='red'>Invalid E-mail<br>Please try again</center>";
		}
	$stmt->close();
	$mysqli->close();
	}
?>
  

<!-- End page content -->
</div>

<!-- W3.CSS Container -->
<div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-left">Powered by Group 13</p>

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
function logout() {
   document.location = 'logout.php';
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>