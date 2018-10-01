

<html>
    <head>
        <!--  I USE BOOTSTRAP BECAUSE IT MAKES FORMATTING/LIFE EASIER -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"><!-- Optional theme -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script><!-- Latest compiled and minified JavaScript -->
    </head>

<body class="container">

<br><br>
<form action="" method="POST" class="col-md-4 col-md-offset-5">
    <select name="dropDown">
<?php
for($i = 1; $i <= 11; $i++) {
    if(isset($_POST['dropDown']) && $_POST['dropDown']==$i) {
        echo "<option selected='selected' value='".$i."'>Query ".$i."</option>";
    }else {
        echo "<option value='".$i."'>Query ".$i."</option>"; 
    }
}
?>
    </select> <br><br>
    <input type="submit" name="submit" class="btn" value="Execute"/>
</form>

<?php
/*
 * @param sql SQL query you want to execute
 * @return The table that results from the sql query
 */
function executeQuery($sql){
    /* Include credentials file.
     * It is essential to place this file outside of 
     * the web directory so users cannot access it.
     */ 
    include "../CONFIG.php";
    $mysqli = new mysqli($HOSTNAME, $USERNAME, $PASSWORD, $DATABASE);
    if ($mysqli->connect_errno) { //Terminate script if there is a connection error
        echo "Failed to connect to MySQLI on Line 5";
        exit();
    }
    $result = $mysqli->query($sql); //Execute query
    echo "<table class='table table-hover'>"; 
    echo "Number of Results: " . $result->num_rows; //Display number of results
    // Collect column names in a while loop and place mark them as headers in out table
    while($fieldInfo = mysqli_fetch_field($result)){
        echo "<th>". $fieldInfo->name. "</th>";
    } 
    echo "</thead>";
    while($row = $result->fetch_array(MYSQLI_NUM)){ //Fetch the results as a numeric array
        echo "<tr>"; //Each element of the array is a row
        /*
         * Each row's data is stored in an array
         * Iterate that array and place each value
         * into the table
         */
        foreach($row as $r){
            echo "<td>" . $r . "</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
    $mysqli->close(); //Close mysql connection
}
if(isset($_POST['submit'])){
    switch($_POST['dropDown']){
    case 1: 
        $sql = "SELECT District, Population FROM City WHERE Name='Springfield' ORDER BY Population;" ;
        break;
    case 2: 
        $sql = "SELECT Name, District, Population FROM City where CountryCode='BRA' ORDER BY Name;";
        break;
    
	case 3:
	$sql= "SELECT Name, Continent, SurfaceArea from Country order by SurfaceArea ASC limit 20;";
	break;
	
	case 4:
	$sql="SELECT Name, Continent, GovernmentForm, GNP FROM Country WHERE(GNP>200000) ORDER BY NAME;";
	break;

	case 5:
	$sql="SELECT Name FROM Country WHERE (LifeExpectancy IS NOT NULL) ORDER BY LifeExpectancy DESC LIMIT 10 OFFSET 10;";
	break;

	case 6:
	$sql="SELECT Name FROM City WHERE Name LIKE 'B%s' ORDER BY Population DESC;";
	break;

	case 7:
	$sql="SELECT City.Name, Country.Name, City.Population FROM City, Country WHERE (City.Population>6000000) AND (City.CountryCode=Country.Code) ORDER BY City.Population DESC;";
	break;
	
	case 8:
	$sql='Select Country.Name, Country.IndepYear, Country.Region from Country, CountryLanguage where Country.Code=CountryLanguage.CountryCode AND CountryLanguage.Language="English" AND CountryLanguage.IsOfficial="T" ORDER BY Region ASC, Name;';
	break;

	case 9:
	$sql='SELECT City.Name, ((City.Population/Country.Population)*100) AS PopPercentage  FROM Country, City WHERE (Country.Capital=City.ID) ORDER BY PopPercentage DESC;';
	break;

	case 10:
	$sql='SELECT CountryLanguage.Language, Country.Name, ( (CountryLanguage.Percentage/100)*Country.Population) AS Num_Spoken FROM CountryLanguage, Country WHERE (Country.Code=CountryLanguage.CountryCode) AND CountryLanguage.IsOfficial="T" Order BY Num_Spoken DESC;';
	break;
	
	case 11:
	$sql='SELECT Country.Name, Country.GNP, Country.GNPOld, (Country.GNP-Country.GNPOld)/Country.GNPOld AS Real_Change FROM Country WHERE (GNP IS NOT NULL) AND (GNPOld IS NOT NULL) ORDER BY Real_Change DESC;';
	break;

	default:
	$sql="";
}





    executeQuery($sql);
}
?>
