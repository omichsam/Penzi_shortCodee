<?php
$conn = new mysqli("localhost", "root", "", "penzi");

include_once('db.php');


if (isset($_SESSION['message'])) {

	$message = $_SESSION['message'];
	$receiver = $_SESSION['receiver'];
	$sender = $_SESSION['sender'];
	$messa = $_SESSION['$message4'];

	$mess = explode("#", $message);
	$education = $mess[1];
	$proffesion = $mess[2];
	$marital_status = $mess[3];
	$religion = $mess[4];
	$tribe = $mess[5];

	$sql1 = "UPDATE `users` SET `education` = '$education', 
						`proffesion` = '$proffesion',
						`marital_status` = ' $marital_status',
						`religion` = '$religion', 
						`tribe` = '$tribe'
						WHERE `users`.`phone_no` = '$sender';";



		if (mysqli_query($conn, $sql1)) {

				insert($receiver, $sender, $messa);

		}

}
