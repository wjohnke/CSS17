

<?php

if(isset($_POST['update'])){

	include "../CONFIG.php";

	$mysqli=new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
	if($mysqli->connect_errno) exit();

	$sql="SELECT * from classes where `course_id` ='" . $_POST['courseID'] . "' ;";

	$result=$mysqli->query($sql);
	//can change to MYSQLI_ASSOC to fetch associative array, and scan row with exact columns in database
	$row=$result->fetch_array(MYSQLI_NUM);
	?>
	<center>
	<form action="handleUpdate.php" method="POST">
		<!--make primary key readonly-->
		Course ID:<input type=text readonly name="courseID" value="<?= $_POST['courseID'] ?>">
                Name: <input type=text name="name" placeholder="<?= $_POST['name'] ?>">
		Department: <input type=text name="department" placeholder="<?= $_POST['department'] ?>">
		Days: <select name="days" required>
                        <option selected="selected" value="MWF">M/W/F</option>
                        <option value="TTh">T/Th</option>
                </select>
		<br><br>
                Start Time:<select name="startTime" required>
                        <option selected="selected" value="8:00:00"> 8 AM</option">
                        <option value="10:00:00"> 10 AM</option">
                        <option value="12:00:00"> 12 PM</option">
                        <option value="14:00:00"> 2 PM</option">
                        <option value="16:00:00"> 4 PM</option">
                        <option value="18:00:00"> 6 PM</option">
                        <option value="20:00:00"> 8 PM</option">
                </select>

                Finish Time:<select name="endTime" required>
                        <option selected="selected" value="8:00:00"> 8 AM</option">
                        <option value="10:00:00"> 10 AM</option">
                        <option value="12:00:00"> 12 PM</option">
                        <option value="14:00:00"> 2 PM</option">
                        <option value="16:00:00"> 4 PM</option">
                        <option value="18:00:00"> 6 PM</option">
                        <option value="20:00:00"> 8 PM</option">
                </select>
		<br><br>
                <input type="submit" name="submit" value="Update">

	</form>
	</center>
<?php

}
?>

