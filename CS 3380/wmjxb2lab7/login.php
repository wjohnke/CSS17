
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Welcome to Lab7!</title>

        <style>
                #form{
                        width:500px;
                        text-align:center;
                        margin:20px auto;
                        border:2px solid blue;
                        border-radius:10px;
                }

                #errorMessage{
                        background-color:red;
                        font-family:20px Arial;
                        margin:20px auto;
                }
        </style>

</head>

<body>
<div id="form">

<div id="errorMessage">
        <?php
                session_start();
                if(isset($_SESSION['error']) && (!empty($_SESSION['error']) ) )
                        echo "<h1>" . $_SESSION['error'] .  "</h1>";
        ?>
</div>
<h1>Login</h1>
<form action="handleCurrent.php" method="POST">
	Username:
        <input type="text" name="username" required="required"><br><br>Password:
        <input type="password" name="pass" required="required"><br><br>
        <input type="submit" name="submit">

</form>
<br><br>
</div>
</body>

</html>









