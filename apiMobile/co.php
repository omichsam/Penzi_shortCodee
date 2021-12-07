<?php
include_once('db.php');

include_once('function.php');
include_once('match1.php');

if (isset($_POST['message'])) {
    include_once('db.php');
	$message = $_POST['message'];
	$receiver = $_POST['receiver'];
	$sender = $_POST['sender'];



function getall($sender)
{
	$conn = new mysqli("localhost", "root", "", "penzi");
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
		$messageAttached = "Send  Next to 25005 to receive details of the remaining  persons";
		return $implodedMatch.": ". $messageAttached;
	}
}


$sender = getall($sender);

	$data = array("status" => "success", "data" => $sender);
	echo json_encode($data);
	
	 
}
