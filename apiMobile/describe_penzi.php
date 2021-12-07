<?php
$conn = new mysqli("localhost", "root", "", "penzi");

include_once('db.php');


// if (isset($_SESSION['message'])) {

// 	// $message = $_SESSION['message'];
// 	// $receiver = $_SESSION['receiver'];
// 	// $sender = $_SESSION['sender'];
include('jsongetter.php');
	$phone= explode("#", $message);
    $exploded_phone_no = $phone[1];
	if(preg_match('/^\d{10}$/',  $exploded_phone_no)) // phone number is valid
		{
			$sql = "SELECT * FROM `users`  WHERE `phone_no` = '$exploded_phone_no'";
			$result = mysqli_query($conn, $sql);
			$check = mysqli_num_rows($result);
			if($check > 0){

				while($rows = mysqli_fetch_assoc($result)){
					$fav_food= $rows['fav_food'];
					$desc1 = $rows['desc1'];
					$desc2 = $rows['desc2'];
                    $AddingCooments = "will make you tick";
                


                    $Message = " is {$desc1} and {$desc2} . {$AddingCooments}";
				}


			}else{
				$Message = "Enter Correct Number";
			}
			
		}else{
			$Message = "Enter Valid Number";
		}
		//$data = array("status" => "success", "data" => $Message);
        echo json_encode($data);
        insert($receiver, $sender, $Message);

// }
