<?php

	$error="";
	$message="";
        if(isset($_SESSION['loggedin'])){
                if($_SESSION['loggedin']=="true"){
                        header('Location: profile.php');
                        exit();
                }
        }
	//'loggedin' is false or not set, check login


        include "CONFIG.php";

        $mysqli=new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);

        if($mysqli->connect_errno){
                $error= "Connection error";
                exit();
        }

        $query="SELECT * FROM users WHERE username=?;";
        $stmt=$mysqli->init();
        if(!($stmt=$mysqli->prepare($query)) ){
                /*Lets you know that
                the query is being successfully performed
                */
                exit();
        }

        $stmt->bind_param("s", $_POST['username']);
        $stmt->execute();
        $result=$stmt->get_result();

        $exists=$result->num_rows;

	session_start();

        if($exists==0){
                $query="INSERT INTO users VALUES(?,?);";
                $stmt=$mysqli->init();

                if(!$stmt=$mysqli->prepare($query)){
                        exit();
                }
		if(!isset($_POST['pass']) ){
			$_SESSION['error']="Password field empty";
			header("Location: index.php");
			exit();
		}

		$sanitizedPass=htmlspecialchars($_POST['pass']);
      
                $hash = password_hash($sanitizedPass, PASSWORD_DEFAULT);
          

 		$stmt->bind_param("ss", $_POST['username'], $hash);
                $stmt->execute();
		$stmt->close();
		$mysqli->close();
		$_SESSION['username']=$_POST['username'];
		$_SESSION['loggedin']="true";
		$message="User successfully created";

		header('Location: profile.php');
		exit();

        }
        else{

		$stmt->close();
		$mysqli->close();
		//User already exists, redirect
		$_SESSION['error']="User already exists";
                header('Location: index.php');
		exit();
        }
?>
