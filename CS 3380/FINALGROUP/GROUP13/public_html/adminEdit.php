<!DOCTYPE html>
<?php
	session_start();
	if(!$_SESSION['permission'] == "admin"){
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
	<a href="staffResetPassword.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Reset Password</a>	
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Admin.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Profile</a>
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
		Customer or Employee Number:<br>
		<input type="text" name="search" placeholder="####" style="text-align: center">
		<br>
		<br>
		<input type="radio" name="radioChoice" value="1" checked="check">Admin</input>
		<br>
		<input type="radio" name="radioChoice" value="2">Conductor</input>
		<br>
		<input type="radio" name="radioChoice" value="3">Engineer</input>
		<br>
		<input type="radio" name="radioChoice" value="4">Customer</input>
		<br>
		<br>
		<input class="button" type="submit" name="submit" value="Search"></input>
		<br>
		<br>
	</div>
	</form>

  
  
 <?php
 include ('../Secure/database.php');
  if(isset($_POST['submit'])){
	$mysqli = mysqli_connect($HOST, $USERNAME, $PASSWORD, $DBMANE);
	
	if(!$mysqli){
		echo "Connection fail line 5";
		exit();
		}
	switch($_POST['radioChoice']) {
			
			case "1":	//admin
			$query = "SELECT `EMPLOYEE`.Employee_Id AS 'Employee ID', `EMPLOYEE`.Train_Assigned AS 'Train Assigned', `ADMIN`.Location AS 'Location' FROM `EMPLOYEE` JOIN `ADMIN` ON `EMPLOYEE`.Employee_Id = `ADMIN`.Employee_Id WHERE `EMPLOYEE`.Employee_Id LIKE ?;";
			break;
			
			case "2":	//conductor
			$query = "SELECT `EMPLOYEE`.Employee_Id AS 'Employee ID', `EMPLOYEE`.Train_Assigned AS 'Train Assigned', `CONDUCTOR`.Rank AS 'Rank', `CONDUCTOR`.Status as 'Status' FROM `EMPLOYEE` JOIN `CONDUCTOR` ON `EMPLOYEE`.Employee_Id = `CONDUCTOR`.Employee_Id WHERE `EMPLOYEE`.Employee_Id LIKE ?;";
			break;
			
			case "3":	//engineer
			$query = "SELECT `EMPLOYEE`.Employee_Id AS 'Employee ID', `EMPLOYEE`.Train_Assigned AS 'Train Assigned', `ENGINEER`.Hours AS 'Hours', `ENGINEER`.Status as 'Status' FROM `EMPLOYEE` JOIN `ENGINEER` ON `EMPLOYEE`.Employee_Id = `ENGINEER`.Employee_Id WHERE `EMPLOYEE`.Employee_Id LIKE ?;";
			break;
			
			case "4":	//customer
			$query = "SELECT `CUSTOMER`.First_Name AS 'First Name', `CUSTOMER`.Last_Name AS'Last Name', `CUSTOMER`.Billing_Email AS 'Email', `CUSTOMER`.Customer_Id_Num AS 'ID' FROM `CUSTOMER` WHERE `CUSTOMER`.Customer_Id_Num =?;";
		}
		$stmt = $mysqli->stmt_init();
		if(!$stmt->prepare($query)){
			echo "Quit";
			exit();
		}
		$param = "{$_POST['search']}%";
		$_SESSION['param']=$param;
		$stmt->bind_param("s", $param);
		$stmt->execute();
		$result = $stmt->get_result();
		echo "<table align='center'>";
		while($field = mysqli_fetch_field($result)){
			echo "<th>";
			echo $field->name;
			echo "</th>";
		}
		echo "</thead>";
		while($row = mysqli_fetch_row($result)){
			echo "<tr>";
			foreach($row as $value)
			{
				echo "<td>";
				echo $value;
				echo "</td>";
			}
			if($_POST['radioChoice']=="1"){
			echo "<td>";
			echo "<form action='/~GROUP13/adminUpdate.php' method='POST'>";
			echo "<input type='hidden' name='originalId' value='$row[0]'></input>";
			echo "<input type='hidden' name='originalTrain' value='$row[1]'></input>";
			echo "<input type='hidden' name='originalLocation' value='$row[2]'></input>";
			echo "<input type='submit' name='update' value='Update'></input>";
			}
			if($_POST['radioChoice']=="2"){
			echo "<td>";
			echo "<form action='/~GROUP13/conductorUpdate.php' method='POST'>";
			echo "<input type='hidden' name='originalId' value='$row[0]'></input>";
			echo "<input type='hidden' name='originalTrain' value='$row[1]'></input>";
			echo "<input type='hidden' name='originalHours' value='$row[2]'></input>";
			echo "<input type='hidden' name='originalStatus' value='$row[3]'></input>";
			echo "<input type='submit' name='update' value='Update'></input>";
			echo "</form></td>";
			echo "<td>";
			}
			if($_POST['radioChoice']=="3"){
			echo "<td>";
			echo "<form action='/~GROUP13/engineerUpdate.php' method='POST'>";
			echo "<input type='hidden' name='originalId' value='$row[0]'></input>";
			echo "<input type='hidden' name='originalTrain' value='$row[1]'></input>";
			echo "<input type='hidden' name='originalRank' value='$row[2]'></input>";
			echo "<input type='hidden' name='originalStatus' value='$row[3]'></input>";
			echo "<input type='submit' name='update' value='Update'></input>";
			echo "</form></td>";
			echo "<td>";
			}
			if($_POST['radioChoice']=="4"){
			echo "<td>";
			echo "<form action='/~GROUP13/customerUpdate.php' method='POST'>";
			echo "<input type='hidden' name='originalFName' value='$row[0]'></input>";
			echo "<input type='hidden' name='originalLName' value='$row[1]'></input>";
			echo "<input type='hidden' name='originalEmail' value='$row[2]'></input>";
			echo "<input type='hidden' name='originalId' value='$row[3]'></input>";
			echo "<input type='submit' name='update' value='Update'></input>";
			echo "</form></td>";
			echo "<td>";
			}
			echo "</tr>";
		}
		echo "</table>";
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