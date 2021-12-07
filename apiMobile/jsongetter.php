<?php
    	
    // $jsonobj = '{"sender":"0707726836","receiver":"25005","message": "Penzi"}';
    $data = file_get_contents('php://input');
	$json_data = json_decode($data , true);
	$sender= $json_data['sender'];
	$receiver= $json_data['receiver'];
	$message = $json_data['message'];