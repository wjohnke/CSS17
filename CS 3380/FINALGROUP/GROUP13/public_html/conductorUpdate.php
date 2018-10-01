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
	if(isset($_POST['logoutButton'])) {
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/index.html');
		session_destroy();
	}
	if($_SESSION){
		echo "<p align='right'><font color='red'>You are logged in as " . $_SESSION['permission'] . ". </font></p>";
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
<?php
	if(isset($_POST['update'])){
		$pk = $_POST['originalId'];
		include ('../Secure/database.php');
		$link = new mysqli($HOST, $USERNAME, $PASSWORD, $DBMANE);
		if (!$link){
			echo "Failed to connect";
			exit();
		}
		$query = $query = "SELECT `EMPLOYEE`.Employee_Id AS 'Employee ID', `EMPLOYEE`.Train_Assigned AS 'Train Assigned', `CONDUCTOR`.Rank AS 'Rank', `CONDUCTOR`.Status AS 'Status' FROM `EMPLOYEE` JOIN `CONDUCTOR` ON `EMPLOYEE`.Employee_Id = `CONDUCTOR`.Employee_Id WHERE `EMPLOYEE`.Employee_Id ='$pk';";
		$result = $link->query($query);
		if(!$result){
			echo "Query did not work";
			exit();
		}
		$row = $result->fetch_array(MYSQLI_NUM);
	}
?>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Missouri<br>Rails 🚂</b></h3>
  </div>
  <div class="w3-bar-block">
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>	
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/staffRegister.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Create New Team Member</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Engineer.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Engineer Page</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Conductor.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Conductor</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/adminEdit.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Update Accounts</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/logout.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Logout</a>	
</div>
</nav>

	<div align="center">
		<form action="handleConductorUpdate.php" method="POST">
			ID Number:<br>
			(Unable to edit)<br>
			<input type='text' style="text-align: center" name='id' readonly value='<?=$row[0]?>'></input>
			<br><br>
			Train:<br>
			<input type='text' style="text-align: center" name='train' value='<?=$row[1]?>'></input>
			<br><br>
			Password:<br>
			<input type='text' style="text-align: center" name='password' placeholder="New Password"></input>
			<br><br>
			Rank:<br>
			<input type='text' style="text-align: center" name='rank' value= '<?=$row[2]?>'></input>
			<br><br>
			Status:<br>
			<input type='text' style="text-align: center" name='status' value= '<?=$row[3]?>'></input>
			<br><br>
			<input type='submit' name='submit' value='Update'></input>
		</form>
	<div>

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