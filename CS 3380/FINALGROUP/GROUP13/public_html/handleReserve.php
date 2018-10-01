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
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Missouri<br>Rails 🚂</b></h3>
  </div>
  <div class="w3-bar-block">
	<a href="http://cs3380.rnet.missouri.edu/~GROUP13/index.html" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>	
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

<?php

if(isset($_POST['reservation'])) {

	session_start();

	include ('../Secure/database.php');
	
	$mysqli = mysqli_connect($HOST, $USERNAME, $PASSWORD, $DBMANE);
	
	if($mysqli->connect_errno){
		echo "Connection fail line 5";
		exit();
	}

	$train = $_POST['train'];
	$quantity = htmlspecialchars($_POST['numCars']);
	$cargo = htmlspecialchars($_POST['cargo']);
	$id = htmlspecialchars($_POST['carID']);
	$dest = htmlspecialchars($_POST['destination']);

	$query = "SELECT * FROM `EQUIPMENT` WHERE Car_Id_Num=?";
	$sql = $mysqli->stmt_init();

	if(!$sql->prepare($query)) {
		echo "Failed to initialize query";
		header("Location: index.html");
	}

	$sql->bind_param("s", $id);
	$sql->execute();
	$result = $sql->get_result();
	if($result->num_rows == 0){
		header("Location: index.html");
	}

	$row = $result->fetch_array(MYSQLI_NUM);
	$capacity = $row[1];
	$car_type = $row[2];
	$location = $row[3];
	$manufacturer = $row[4];
	$price = $row[8];

}

?>

		<title>MO Rails - Verification</title>
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

	</head>	

	<body>
		<div>
			<h1>Please review your order before confirming!</h1>
			<form method="POST" action="handleUpdate.php">
				Reserve Status: <input type="text" readonly name="reserved" value="closed"><br>
				Car ID: <input type="text" readonly name="carID" value="<?php echo $id; ?>"><br>
				Quantity: <input type="text" readonly name="quantity" value="<?php echo $quantity; ?>"><br>
				Price: <input type="text" readonly name="price" value="<?php echo ($price*$quantity)+($price*$quantity*.05); ?>"><br>
				Destination: <input type="text" readonly name="destination" value="<?php echo $dest; ?>"><br>
				Train: <input type="text" readonly name="train" value="<?php echo $train; ?>"><br>
				<input type="hidden" name="carType" value="<?= $car_type ?>">
				<input type="submit" name="confirmation" value="Confirm Reservation">
			</form>
			You will be billed at the end of the month.
		</div>

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


