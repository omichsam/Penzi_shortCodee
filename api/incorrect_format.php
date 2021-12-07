<?php

include_once('db.php');


if (isset($_SESSION['message'])) {

	$message = $_SESSION['message'];
	$receiver = $_SESSION['receiver'];
	$sender = $_SESSION['sender'];

    $data = "INCORRECT FORMAT Please try again";
    $state= "error";
        insertc($receiver, $sender, $data, $state);


}