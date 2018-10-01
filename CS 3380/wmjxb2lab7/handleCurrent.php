<?php
	session_start();
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

        

        if($exists==1){
                $query="SELECT password from users where username=?;";
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

                $stmt->bind_param("s", $_POST['username']);
                $stmt->execute();

		$stmt->bind_result($dbPassword);
		$stmt->fetch();		

		if(password_verify($sanitizedPass, $dbPassword) ){
			$_SESSION['username']=$_POST['username'];
                	$_SESSION['loggedin']="true";
             		$stmt->close();
			$mysqli->close();   	
        	        header('Location: profile.php');
			exit();

        	}
	}

        $stmt->close();
        $mysqli->close();
                //Incorrect data
        $_SESSION['error']="Incorrect Username or Password";
        header('Location: login.php');
       	exit();
        
?>

