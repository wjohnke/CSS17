<!DOCTYPE html>
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


<?php
	session_start();
	if(!$_SESSION['permission'] == "customer" || !$_SESSION['permission'] == "admin" || !$_SESSION['permission'] == "conductor" || !$_SESSION['permission'] == "engineer"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/index.html');
	}
	if($_SESSION){
		echo "<p align='right'><font color='red'>You are logged in as " . $_SESSION['permission'] . "and ID number " . $_SESSION['id'] . ". </font></p>";
	}
	if(isset($_POST['logoutButton'])) {
		session_destroy();
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/index.html');
	}
?>

<title>Search for Cars</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Missouri<br>Rails 🚂</b></h3>
  </div>
  <div class="w3-bar-block">
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>
	<a href="resetPassword.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Reset Password</a>
	<a href="logout.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Logout</a>		
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
    <h1 class="w3-jumbo"><b>Railroad Systems</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>

  <div class="w3-container w3-red w3-border" style="width:700px;border-radius:10px; margin:25px auto;">
<form action="equipmentList.php" method="GET" style="padding:25px: margin:10px">
	<div class="group" style="float:left;">
	Car Type:<select name="carType">
		<option selected="selected" disabled="disabled">Select Car Type</option>
		<option value="grain">Grain Car</option>
		<option value="hop">Hopper</option>
		<option value="flat">Flat Bed</option>
		<option value="coal">Coal Car</option>
		<option value="box">Box Car</option>
		<option value="cov">Covered Coil</option>
		<option value="center">Centerbeam</option>
    	</select>
	<br>
	Location:<select name="carLocation">
		<option selected="selected" disabled="disabled">Select Location</option>
		<option value="New York">New York</option>
		<option value="Kansas City">Kansas City</option>
		<option value="Dallas">Dallas</option>
		<option value="San Diego">San Diego</option>
		<option value="Denver">Denver</option>
		<option value="Philadelphia">Philadelphia</option>
		<option value="St. Louis">St. Louis</option>
		<option value="Los Angeles">Los Angeles</option>
		<option value="San Francisco">San Francisco</option>
		<option value="Columbia">Columbia</option>
		<option value="Chicago">Chicago</option>
		<option value="Nashville">Nashville</option>
	</select>
	</div>
	<div class="group" style="float:right;">
	Price Minimum: <input type="number" name="carMin" min="0" max="999" value="0">
	<br>
	Price Maximum: <input type="number" name="carMax" min="1" max="999" value="999">
	</div>
	<br><br><br>
	<div align="center">
	<form action="" method="POST">
    	<input type="submit" name="search" class="btn" value="Search">
	</form>
		<form action="" method="POST">
		<button type="submit" name="logoutButton">Logout</button>
		</form>
	</div>
</form>
</div>


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
