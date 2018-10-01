<!DOCTYPE html>

<html>

<head>

</head>

<body>
	<form action="insertRecord.php" method="POST">
		<input type="text" name="name" placeholder="Course Name" required>
		<input type="text" name="department" placeholder="Department" required>
		<input type="text" name="courseID" placeholder="Course ID" required>

		<select name="days" required>
			<option selected="selected" value="MWF">M/W/F</option>
			<option? valu="TTh">T/Th</option>
		</select>
		<select name="startTime" required>
			<option selected="selected" value="8:00:00"> 8 AM</option>
                        <option value="10:00:00"> 10 AM</option>
                        <option value="12:00:00"> 12 PM</option>
                        <option value="14:00:00"> 2 PM</option>
                        <option value="16:00:00"> 4 PM</option>
                        <option value="18:00:00"> 6 PM</option>
                        <option value="20:00:00"> 8 PM</option>
		</select>

		<select name="endTime" required>
                        <option selected="selected" value="8:00:00"> 8 AM</option>
                        <option value="10:00:00"> 10 AM</option>
                        <option value="12:00:00"> 12 PM</option>
                        <option value="14:00:00"> 2 PM</option>
                        <option value="16:00:00"> 4 PM</option>
                        <option value="18:00:00"> 6 PM</option>
                        <option value="20:00:00"> 8 PM</option>
		</select>

		<input type="submit" name="submit" value="insert">Insert
	</form>
</body>


</html>
