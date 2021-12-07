<?php
// include_once('db.php');
include_once('function.php');


if (isset($_SESSION['message'])) {

	$message = $_SESSION['message'];
	$receiver = $_SESSION['receiver'];
	$sender = $_SESSION['sender'];
	$message1 =  $_SESSION['$message1'];
	$message2 =  $_SESSION['$message2'];
	
	$conn = mysqli_connect('localhost', 'root', '', 'penzi');
$sql1 = "SELECT * FROM `users` WHERE `phone_no` = '$sender'";
$result = mysqli_query($conn, $sql1);
		if ($result) {

			if (mysqli_num_rows($result) > 0) {
        
               //insert the outgoing message to the user
				insert($receiver, $sender, $message2);
				// $responseSms = $message2;
			} else {
				   //insert the outgoing message to the user
				insert($receiver, $sender, $message1);
				// $responseSms = $message3;
			}
			
      
		


		} else {
			$data = array("status" => "error", "data" => "Error: " . $sql . "<br>" . $conn->error);
			echo json_encode($data);
		}
	 
}
