<!DOCTYPE html>

<head>
        <title>Lab 6</title>
        <meta charset="UTF-8">
	
	<style>
		#contain{
			text-align: center;
			margin: auto;
			border:2px solid black;
		}
		#results{
			margin: 20px auto;
			width: 600px;
			border: 2px solid red;
			border-radius:10px;
			text-align:center;
		}
	</style>


</head>

<body>


        <div id="contain">

        <br><br>
        <form action="" method="POST">
                <select name="dropDown">
                <option value='1'>Show all records</option>
                <option value='2'>Show start time</option>
                <option value='3'>Show all CS Classes</option>
                <option value='4'>Show all MWF Classes</option>
                <option value='5'>Show Length of all Classes</option>
                </select> <br><br>
                <input type="submit" name="submit" class="btn" value="Execute"/>
        </form>

<div id="results">

<?php

$queryStatement="";

if(isset($_POST['submit'])){
/*
Choose choice for query
*/

	$queryChoice=$_POST['dropDown'];
	
	switch($queryChoice){
		case '1':
			$queryStatement='SELECT * from `classes`;';
			break;
		case '2':
			$queryStatement='SELECT `start`, `name` FROM `classes`;';
			break;
		case '3':
			$queryStatement='SELECT `department`, `name` FROM `classes` where department="Computer Science";';
			break;
		case '4':
			$queryStatement='SELECT `name`, `course_id` FROM `classes` where `days`="MWF";';
			break;
		case '5':
			$queryStatement='SELECT `name`, TIMEDIFF(`end`, `start`) FROM `classes`; ';
			break;
		default:
			$queryStatement='SELECT * from `classes`;';
	}





include "CONFIG.php";

$mysqli = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);

if($mysqli->connect_errno){
        echo "Connection failed";
        exit();
}

$result=$mysqli->query($queryStatement);

echo "<table>";



while($fieldInfo=mysqli_fetch_field($result)){
        echo "<th>" . $fieldInfo->name .  "</th>";
}

while($row=$result->fetch_array(MYSQLI_NUM) ){
        echo "<tr>";

        foreach($row as $value){
                echo "<td>" . $value . "</td>";
        }
        echo "</tr>";

}

}
?>
</div>

</div>

</body>

