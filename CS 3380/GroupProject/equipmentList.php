<?php


if(!isset($_GET['search']) || ($_GET['search']!="Search")){
/*Check if search was set*/
	header("Location: search.php");
	exit();
}


include "../Secure/database.php";
$mysqli=new mysqli($HOST, $USERNAME, $PASSWORD, $DBMANE);
if($mysqli->connect_errno){
	echo "Failed to connect to mysqli";
	exit();
}

$query=prepareQuery();
executeQuery($mysqli, $query);
$query="";
$mysqli->close();
unset($_GET['carType']);
unset($_GET['carLocation']);
unset($_GET['carMax']);
unset($_GET['carMin']);


function executeQuery($mysqli, $query){
	
	$stmt=$mysqli->stmt_init();
	if(!($stmt->prepare($query)) ){
		exit();
	}

	$stmt->execute();

	$result=$stmt->get_result();
	$exists=$result->num_rows;

	echo $exists . "cars were found<br><br>";
	echo "<table>";
	while($column=mysqli_fetch_field($result)){
	//Print column names
		echo "<th>" . $column->name . "</th>";
	}
	while($row=$result->fetch_array(MYSQLI_NUM)) {
		echo "<tr>";
		foreach($row as $r){
			echo "<td>" . $r . "</td>";
		}
		?>
		<td>

			<form action='reserve.php' method="POST">
				<!--Pass reserved car id to reserve.php page-->
				<input type="hidden" name="carID" value='<?= $row[0] ?>'>
				<input type="submit" name="reserve" value="Reserve">
			</form>
		</td>
		<?php
		echo "</tr>";
	}

	echo "</table>";

}


function prepareQuery(){
/*
Prepare the query to run, dependent on the selections the customer makes
*/
	$carLocation= (empty($_GET['carLocation']) ? "" : empty($_GET['carLocation']) );
	$carType= (empty($_GET['carType']) ? "" : empty($_GET['carType']) );

	/*
	Default price min & max are absolute min & max to show all,
	otherwise show exact range
	*/
	
	$carMin=(empty($_GET['carMin']) ? 0 : $_GET['carMin']);
	$carMax=(empty($_GET['carMax']) ? 999 : $_GET['carMax']);

	$query="SELECT `Location`, `Car_Type` AS CarType, `Load_Capacity` AS LoadCapacity, `Price` FROM `EQUIPMENT` WHERE Reserve_Status='open' ";
	
	if($carLocation!=""){
		$query .= " AND Location='". $carLocation . "'";
	}
	if($carType!=""){
		$query .= " AND Car_Type='" . $carType . "'";
	}	
	$query .= " AND (Price <= " . $carMax .  ") AND (Price >=" . $carMin . ");";

	return $query;
}


?>
