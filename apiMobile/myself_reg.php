<?php
$conn = new mysqli("localhost", "root", "", "penzi");

include_once('db.php');


// if (isset($_SESSION['message'])) {

	// $message = $_SESSION['message'];
	// $receiver = $_SESSION['receiver'];
	// $sender = $_SESSION['sender'];
include('jsongetter.php');
	$messa = $_SESSION['$message5'];


		$mess = explode("#", $message);
		$fav_food = $mess[1];
		$desc1 = $mess[2];
		$desc2 = $mess[3];

		$sql1 = "UPDATE `users` SET `fav_food` = '$fav_food', `desc1` = '$desc1', `desc2` = ' $desc2' WHERE `users`.`phone_no` = '$sender';";



		if (mysqli_query($conn, $sql1)) {

				//insert the outgoing message to the user
						insert($receiver, $sender, $messa);

		}

// }
?>