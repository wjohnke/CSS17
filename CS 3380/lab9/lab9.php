<!DOCTYPE html>

<html>


<body>

<a href="insert.php" >Insert New Class</a>

<form action="" method="POST">

	Search:
	<input type="text" name="search">

	<br><br>
	<input type="radio" name="criteria" value="0" checked="check">Name
        <input type="radio" name="criteria" value="1">Department
	<input type="radio" name="criteria" value="2">Course ID
	<input type="submit" name="submit" value="Search">
	

</form>


<?php
if(isset($_POST['submit'])){

	include "../CONFIG.php";

	$mysqli=new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
	if($mysqli->connect_errno){
		echo "Failed to connect to mysqli";
		exit();
	}	

	if($_POST['criteria']==0){
	//Search by course name
		$sql= 'SELECT *	from classes WHERE `name` LIKE ?;';
	}
	else if($_POST['criteria']==1){
	//Search by department
		$sql= 'SELECT * from classes WHERE `department` LIKE ?;';
	}
	else if($_POST['criteria']==2){
        //Search by Course ID
                $sql= 'SELECT * from classes WHERE `course_id` LIKE ?;';
        }
	else exit();
	$stmt=$mysqli->stmt_init();

	if(!($stmt->prepare($sql)) ){
		echo "Invalid statement";
		exit();
	}	
	$param=htmlspecialchars($_POST['search']) . "%";

	$stmt->bind_param("s", $param);	
	$stmt->execute();
	$result=$stmt->get_result();
	$exists=$result->num_rows;
	echo $exists . " rows were found";

	if($exists>0){
		
	}

	echo "<table>";
	while($column=mysqli_fetch_field($result)){
		echo "<th>" . $column->name . "</th>";
	}
	
	while($row=$result->fetch_array(MYSQLI_NUM)){
		echo "<tr>";
		foreach($row as $r){
			echo "<td>" . $r . "</td>";
		}
		?>
		<td>
			<form action="update.php" method="POST">
				<input type="hidden" name="name" value='<?= $row[0] ?>'>
				<input type="hidden" name="department" value='<?=$row[1] ?>'>
				<input type="hidden" name="courseID" value='<?=$row[2] ?>'>
				<input type="hidden" name="startTime" value='<?=$row[3] ?>'>
				<input type="hidden" name="endTime" value='<?=$row[4] ?>'>
				<input type="hidden" name="days" value='<?=$row[5] ?>'>

				<input type="submit" name="update" value="Update">
			</form>
		</td>
		<td>
			<form action="handleDelete.php" method="POST">
				<input type="hidden" name="courseID" value='<?=$row[2]?>'>
				<input type="submit" name="delete" value="Delete">
			</form>
		</td>
	<?php
		echo "</tr>";
	}
	echo "</table>";
	$stmt->close();
	$mysqli->close();
}

?>
</body>

</html>
