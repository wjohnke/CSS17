<?php
	session_start();
	$_SESSION['loggedin']="false";
	$_SESSION['error']="You have logged out";
		
	session_unset();
	session_destroy();
	header("Location: index.php");
	exit();	

?>
