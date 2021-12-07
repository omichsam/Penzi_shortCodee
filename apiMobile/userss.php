<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:POST,GET,PUT,DELETE');
header('Access-Control-Allow-Headers: content-type or other');
header('Content-Type: application/json');

include_once('db.php');
include_once('function.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST'){

//     $data = file_get_contents('php://input');
//     // $jsonobj = '{"sender":"0707726836","receiver":"25005","message": "Penzi"}';
//     // $json_data = json_decode($jsonobj , true);
//     $json_data = json_decode($data , true);


// $sender= $json_data['sender'];
// $receiver= $json_data['receiver'];
// $message = $json_data['message'];

    include_once('jsongetter.php');
 
 
 

   $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES('$sender', '$receiver', '$message')";

 if (mysqli_query($conn, $sql)) {

         include_once('Session_Variables.php');
        Check_Option($UserOption);

    }

// $response = array('sender' => $sender, 'receiver' => $receiver, 'message' => $message );
//  echo json_encode($response);
 
}


?>

