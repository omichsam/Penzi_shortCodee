<?php
$conn = new mysqli("localhost", "root", "", "penzi");
include_once('db.php');


// if (isset($_SESSION['message'])) {

	// $message = $_SESSION['message'];
	// $receiver = $_SESSION['receiver'];
	// $sender = $_SESSION['sender'];
	include('jsongetter.php');
	$messa = $_SESSION['$message3'];


		//START#name#age#sex#province#town

		$mess = explode("#", $message);
		$name = $mess[1];
		$age = $mess[2];
		$sex = $mess[3];
		$county = $mess[4];
		$town = $mess[5];
		//inserting new user to the db
		$sql1 = "INSERT INTO `users` (`id`, `name`, `phone_no`, `age`, `gender`, `county`, `town`) 
			     	VALUES (NULL, '$name', '$sender', '$age', '$sex', '$county', '$town');";


		if (mysqli_query($conn, $sql1)) {

			//insert the outgoing message to the user
			insert($receiver, $sender, $messa);
		}
	
	
// }
