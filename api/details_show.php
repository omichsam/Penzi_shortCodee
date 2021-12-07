<?php
$conn = new mysqli("localhost", "root", "", "penzi");

include_once('db.php');


if (isset($_SESSION['message'])) {

	$message = $_SESSION['message'];
	$receiver = $_SESSION['receiver'];
	$sender = $_SESSION['sender'];
	$messa = $_SESSION['$message4'];
	if(preg_match('/^\d{9}$/',$sender)) // phone number is valid
		{
			$sql = "SELECT * FROM `users`  WHERE `phone_no` = '$sender'";
			$result = mysqli_query($conn, $sql);
			$check = mysqli_num_rows($result);
			if($check > 0){

				while($rows = mysqli_fetch_assoc($result)){
					$name = $rows['name'];
					$age = $rows['age'];
					$county = $rows['county'];
				    $phone = $rows['phone_no'];
					$town = $rows['town'];
					$religion = $rows['religion'];
					$tribe = $rows['tribe'];
					$marital_status = $rows['marital_status'];
					$proffession = $rows['proffesion'];
					$gender = $rows['gender'];
					$education = $rows['education'];


								$messageOut = " {$name} aged  {$age}, {$county} County {$town} town,
								 {$education} {$proffession}, {$marital_status}, {$religion}, {$tribe}, 
								Send Describe {$phone} to get more details about {$name}";
				}


			}else{
				$messageOut = "Enter Correct phone  Number";
			}
			
		}else{
			$messageOut = "Enter Valid phone Number";
		}
		$data = array("status" => "success", "data" => $messageOut);
        echo json_encode($data);
		insert($receiver ,$sender, $messageOut);

}
