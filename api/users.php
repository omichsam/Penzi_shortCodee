<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:POST,GET,PUT,DELETE');
header('Access-Control-Allow-Headers: content-type or other');
header('Content-Type: application/json');

include_once('function.php');
// include_once('db.php');

$conn =  mysqli_connect('localhost', 'root', '', 'penzi');
if (isset($_POST['message']) && !empty($_POST['message'])) {
    //including all the session variables
        include_once('Session_Variables.php');

    $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES('$sender', '$receiver', '$message')";

	if (mysqli_query($conn, $sql)) {

        Check_Option($UserOption);

    }

    
   
}


