<!DOCTYPE html>
<?php
	session_start();
	if($_SESSION['permission'] == "customer"){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/CustomerRecord.php');
	}
	if(!$_SESSION['permission']){
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/Slogin.php');
	}
	if(isset($_POST['logoutButton'])) {
		header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/index.html');
		session_destroy();
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
    <h3 class="w3-padding-64"><b>Missouri<br>Rails ðŸš‚</b></h3>
  </div>
  <div class="w3-bar-block">
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Admin.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Profile</a>	
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/staffRegister.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Create New Team Member</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Engineer.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Engineer</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/Conductor.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Conductor</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/adminEdit.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Update Accounts</a>
	<a href="staffResetPassword.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Reset Password</a>
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/logout.php" onclick="logout()" class="w3-bar-item w3-button w3-hover-white">Logout</a>	
</div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">ðŸš‚</a>
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
 <div style="text-align: center">



<?php


$accessLevel=empty($_SESSION['permission']) ? "" : ($_SESSION['permission']);
$executeQuery=false;

include "../Secure/database.php";
$mysqli=new mysqli($HOST, $USERNAME, $PASSWORD, $DBMANE);
if($mysqli->connect_errno) exit();
$stmt=$mysqli->stmt_init();
$sql="";
?>

<?php
switch($accessLevel){
	case "admin":
		?>
		<form action="" method="POST">
			<input type="text" name="id_num" placeholder="Search by train number">
			<input type="submit" name="submit" value="search">Search Results
		</form>
		
		<a href="CustomerRecord.php">Customer Records</a>
		
		<?php	
		$sql="SELECT * FROM TRAIN_LOGS";
		if(isset($_POST['id_num']) && isset($_POST['submit']) && $_POST['submit']=="search" && !empty($_POST['id_num']) ){
			$sql.=" WHERE `Train_Num` = ?;";
			$stmt=$mysqli->stmt_init();
			if(!$stmt->prepare($sql)){
				echo "Error in prepare statement";
				exit();
			}
			$id_num=htmlspecialchars($_POST['id_num']);
			$stmt->bind_param("s", $id_num );
			$executeQuery=true;
		}
		else if(isset($_POST['submit']) ){
			$sql.=";";
			if(!$stmt->prepare($sql) ) exit();
			$executeQuery=true;
		}
		break;
	case "engineer": case "conductor":
		?>
		<form action="" method="POST">
			<input type="text" name="id_num" placeholder="Search by train number">
			<input type="submit" name="submit" value="search">Search Results
		</form>
		<?php
		$emp_id=htmlspecialchars($_POST['id']);
		if(isset($_POST['search']) && isset($_POST['id_num']) ){
			$sql="SELECT * from TRAIN_LOGS WHERE (?=Engineer_Assigned_1 OR
				?=Engineer_Assigned_2 OR ?=Conductor_Assigned) AND Train_Num=?;"; 
			if(!$stmt->prepare($sql) ) exit();
			$id_num=htmlspecialchars($_POST['id_num']);
			$stmt->bind_param("ssss", $emp_id, $emp_id, $emp_id, $id_num);
			$executeQuery=true;
		}
		else if(!isset($_POST['id_num'] )){
			$sql .="SELECT * from TRAIN_LOGS WHERE (?=Engineer_Assigned_1 OR
				?=Engineer_Assigned_2 OR ?=Conductor_Assigned);";
			if(!$stmt->prepare($sql) ) exit();
			$stmt->bind_param("sss", $emp_id, $emp_id, $emp_id);
			$executeQuery=true;
		}
		break;
	case "customer":
		header("Location: CustomerRecord.php");
		exit();
	default:
		exit();
}

if($executeQuery==true){
$stmt->execute();
$result=$stmt->get_result();
$exists=$result->num_rows;

if($exists==0){
	echo "<br><br>No results found, please try a different entry";
}
else{
	echo "<br><br>" . $exists . " entries were found.<br><br>";
	echo "<table>";
	while($column=mysqli_fetch_field($result) ){
		echo "<th>" . $column->name . "</th>";
	}
	while($row=$result->fetch_array(MYSQLI_NUM) ){
		echo "<tr>";
		foreach($row as $r){
			echo "<td>" . $r . "</td>";
			
			
		}
		echoButtons($accessLevel, $row[0]);
		echo "</tr>";
	}
	
	echo "</table>";
}
}
$mysqli->close();



function echoButtons($accessLevel, $logNum){
	if($accessLevel=='customer') return;
	switch($accessLevel){

	case "admin": case "engineer" : case "conductor":
	?>
	
	<td>
		<form action='deleteLog.php' method="POST">
			<input type="hidden" name="logNumber" value='<?= $logNum ?>'>
			<input type="submit" name="delete" value="Delete">
		</form>
	</td>
	<td>
		<form action='updateLog.php' method="POST">
			<input type="hidden" name="logNumber" value='<?= $logNum ?>'>
			<input type="submit" name="update" value="Update">
	</td>	
	
	
	<?php
	default: return;
	}
	
}


?>
</div>
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


