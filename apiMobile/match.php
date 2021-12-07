<?php
include_once('db.php');
include_once('match1.php');
include_once('getAll_match.php');
include_once('co.php');

// if (isset($_SESSION['message'])) {

// 	$message = $_SESSION['message'];
// 	$receiver = $_SESSION['receiver'];
// 	$sender = $_SESSION['sender'];
include('jsongetter.php');
	$mess = explode('#', $message);
	$age = $mess[1];
	$county = $mess[2];

	$ages = explode('-', $age);
	$minAge = $ages[0];
	$maxAge = $ages[1];


	$conn = new mysqli("localhost", "root", "", "penzi");
	$sql = "SELECT * FROM `users` WHERE `phone_no`='$sender'";
	$result = mysqli_query($conn, $sql);
	$check = mysqli_num_rows($result);
	if ($check > 0) {

		while ($row = mysqli_fetch_assoc($result)) {

			$gender = $row["gender"];
			if ($gender == "Female") {
				$genderMatch = "Male";

				
			} else {
				$genderMatch = "Female";
			
			}
			$messa = ShowCount($county, $genderMatch,  $minAge, $maxAge);

		}

		//function to insert user preference
		InsertPref($sender, $minAge, $maxAge, $county, $genderMatch);

		FindInsertMatchMate($county, $genderMatch, $minAge, $maxAge, $sender);
		$penziListed = SelectShowPenzi($sender);
		$listedMessage =  nl2br($messa . ". " . $penziListed);
		insert($receiver, $sender, $listedMessage);
	}
// }
