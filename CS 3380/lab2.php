<!DOCTYPE html>

<head>
	<meta charset="utf-8">
	<title>Lab 2</title>


</head>

<body>

<? php
        if(isset($_POST['submit'])){
                echo $_POST['firstName'];
                echo $_POST['major'];
                echo $_POST['year'];
        }



?>


<div>
	<form action="lab2.php" method="POST">
		Name:	
		<input type="text" name="firstName"><br>
		Major:<br>
		<input type="radio" name="major" value="CS" checked="checked"> Computer Science <br>
		<input type="radio" name="major" value="O"> Other <br>
		Year:
		<select name="year">
			<option value="Freshman">Freshman</option>
			<option value="Sophomore">Sophomore</option>
			<option value="Junior">Junior</option>
			<option value="Senior">Senior</option>
		</select><br>


		<input type="submit" name="submit" value="Submit">
	<form>
</div>

	<?php
        if(isset($_POST['submit'])){
		echo "<br>Data Received:<br><br>";
                echo "Name: " . $_POST['firstName'] . "<br>";
                echo "Major: " . $_POST['major'] . "<br>";
                echo "Year: " .  $_POST['year'];
        }
	?>



</body>
