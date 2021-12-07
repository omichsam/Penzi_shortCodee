<?php

include_once('db.php');
include_once('match1.php');


// if (isset($_SESSION['message'])) {

	// $message = $_SESSION['message'];
	// $receiver = $_SESSION['receiver'];
	// $sender = $_SESSION['sender'];
include('jsongetter.php');

	
	$sql = "SELECT * FROM `match_log` WHERE `searcher` = '$sender' AND `status` = '0' LIMIT 3";
	$result = mysqli_query($conn, $sql);
	$check = mysqli_num_rows($result);

	if ($check > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
     
			$matchedPenzi_No[]  = $row['searched'];
		}
		$implodePenzi_No = implode(', ', $matchedPenzi_No);



		$sql = "SELECT * FROM `users` WHERE  `phone_no` IN ({$implodePenzi_No})";
		$result = mysqli_query($conn, $sql);
		while ($row = mysqli_fetch_assoc($result)) {


			$age = $row['age'];
			$phone = $row['phone_no'];
			$name = $row['name'];
			UpdatePenziStatusSeen($sender, $phone);
			$matches[] = users($name, $age, $phone);
		}
		$implodedMatch = implode(":", $matches);
         $Matches_remaining = Remaining_Matches($sender);
		 if($Matches_remaining > 0){
			$messageAttachedsent = "Send  Next to 25005 to receive details of the 
							remaining { $Matches_remaining} persons";
		 }else{
			 $messageAttachedsent = "";
		 }

		$messageAttached = "Send  Next to 25005 to receive details of the remaining { $Matches_remaining} persons";
		$OutGoingMessage = $implodedMatch.": ". $messageAttachedsent;
		insert($receiver, $sender, $OutGoingMessage);
	}


// }