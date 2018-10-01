<!DOCTYPE html>
<?php
	session_start();
	if($_SESSION['permission'] == "customer"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/search.php');
	}
	if($_SESSION['permission'] == "conductor"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Conductor.php');
	}
	if(!$_SESSION['permission']){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Slogin.php');
	}
	if($_SESSION){
		echo "<p align='right'><font color='red'>You are logged in as " . $_SESSION['permission'] . " with ID number " . $_SESSION['id'] . ". </font></p>";
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
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Admin.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Profile</a>
	<a href="staffResetPassword.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Reset Password</a>	
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
    <h1 class="w3-jumbo"><b>Working on the railroad...</b></h1>
  </div>

 <?php
 include ('../Secure/database.php');
	$mysqli = mysqli_connect($HOST, $USERNAME, $PASSWORD, $DBMANE);
	if(!$mysqli){
		echo "Connection fail line 5";
		exit();
	}
	$query = "SELECT `EMPLOYEE`.Train_Assigned AS 'Train Assigned' FROM `EMPLOYEE` WHERE `EMPLOYEE`.Employee_Id = ?;";
	$stmt = $mysqli->stmt_init();
	if(!$stmt->prepare($query)){
		echo "Quit";
		exit();
	}
	$stmt->bind_param("s", $_SESSION['id']);
	$stmt->execute();
	$result = $stmt->get_result();
	$num_rows = $result->num_rows;
	echo "<style>
		table, th, td{
			border: 1px solid black;
			text-align: center;
		}
		td{
			padding: 5px;
		}
		</style>";	
	echo "<p align='center'>You are assigned to " . $num_rows . " train(s).</p><br>";
	echo "<table align='center'>";
	while($fieldInfo = mysqli_fetch_field($result)) {
		echo "<th>" . $fieldInfo->name . "</th>\n";
	}
	echo "<br>";
	while($row = $result->fetch_array(MYSQLI_NUM)){
		echo "<tr>";
		foreach($row as $data){
			echo "<td>" . $data . "</td>\n";
		}
		echo "</tr>";
	}
	echo "</table>";
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