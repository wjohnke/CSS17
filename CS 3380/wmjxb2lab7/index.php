<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome to Lab7!</title>

	<style>
		#login{
			margin:20px auto;
			border:2px solid black;
			border-radius: 15px;
			padding:10px;
		}
		#form{
			width:500px;
			text-align:center;
			margin:20px auto;
			border:2px solid blue;
			border-radius:10px;
		}

		#errorMessage{
			background-color:red;
			font-family:20px Arial;
			margin:20px auto;
		}
	</style>

</head>

<body>
<div id="form">

<div id="errorMessage">
	<?php
		session_start();
		if(isset($_SESSION['error']) && (!empty($_SESSION['error']) ) ) 
			echo "<h1>" . $_SESSION['error'] .  "</h1>";
	?>
</div>
<h1>Create a new user:</h1>
<form action="handleLogin.php" method="POST">
        Username: <input type="text" name="username" required="required"><br><br>
        Password: <input type="password" name="pass" required="required"><br><br>
        <input type="submit" name="submit">

</form>
<br><br>
<div id="login">
	<a href="login.php">Already Registered? Login here!</a>

</div>
</div>
</body>

</html>
