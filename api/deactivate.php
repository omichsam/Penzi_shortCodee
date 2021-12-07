
<?php
include_once('function.php');


for ($i = 10; $i > 0; $i++) {

	echo "<br> Line to show.<br>";
	//echo str_pad('',4096)."\n"; 
	include_once('db.php');

	$getUsersQuery = "SELECT * FROM `users` WHERE  `activation` = '0'";
	$results = mysqli_query($conn, $getUsersQuery);
	while ($rows = mysqli_fetch_assoc($results)) {
		$UsersPhone[] =  $rows['phone_no'];
	}
	$implodedUsersPhone = implode(",", $UsersPhone);

	$sql = "SELECT DISTINCT `sender`, `date` FROM `message` 
				WHERE  `sender` IN ({$implodedUsersPhone})
			   GROUP BY `sender` 
			   ORDER BY `date` DESC";
	$result = mysqli_query($conn, $sql);
	if ( mysqli_num_rows($result)< 0) {
		echo "users are active";
		// $ImplodedUsersToDeactivate = implode(',', $usersToDeactivate);
		// $exlpode = explode(",", $your_dateImplodedUsersToDeactivate);
		// foreach ($exlpode as $sender) {
		// 	insert("25005", $sender, "YOU HAVE been  DEACT");
		// }
	} else {
	   $resultt = mysqli_query($conn, $sql);
		while ($rows = mysqli_fetch_assoc($resultt )) {

			$now = time(); // or your date as well	
			$your_date = strtotime($rows['date']);
			@$datediff = floor(($now - $your_date) / 86400);
			if ($datediff > 2) {
				// $name = $rows['sender'] ."--------". $rows['date'] ."<br>";
				// echo $name."<br>        ".$datediff ."<br>";
				$sender = $rows['sender'];
				$usersToDeactivate[] = $sender;

				$query = "UPDATE `users` SET `activation` = '1' WHERE `phone_no`= '$sender'";
				$result = mysqli_query($conn, $query);
				if ($result) {
					 insert('25005', $sender, 'YOU HAVE BEEN DEACTIVATED');
				}
				
				$sender = null;
				 $usersToDeactivate = null;

			}
		}
	}

	ob_flush();
	flush();
	sleep(2);
}

echo "Done.";

ob_end_flush();
?>
