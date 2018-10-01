<?php
	session_start();
    session_destroy();
    session_unset();
    header('Location: http://cs3380.rnet.missouri.edu/~GROUP13/index.html'); 
	
?>