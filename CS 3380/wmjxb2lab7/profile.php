<?php
	

	session_start();

	if( ((!isset($_SESSION['loggedin']) ) || empty($_SESSION['loggedin']) || ($_SESSION['loggedin'] != "true") || (!isset($_SESSION['username']  ))  )) {
		$_SESSION['error']="You are not logged in";
		header("Location: index.php");
		exit();
	}

	$username=empty($_SESSION['username']) ? "" : $_SESSION['username'];

	echo "<h1>You are logged in</h1><br>";
	echo "<h2>Username: $username </h2>";
	echo "<br><br>";
	echo '<a href="logout.php">Logout</a>';
?>
