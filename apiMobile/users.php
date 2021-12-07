<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:POST,GET,PUT,DELETE');
header('Access-Control-Allow-Headers: content-type or other');
header('Content-Type: application/json');

include_once('function.php');
// include_once('db.php');
$conn =  mysqli_connect('localhost', 'root', '', 'penzi');


// if ($_SERVER['REQUEST_METHOD'] === 'POST'){

//     $data = file_get_contents('php://input');
//     $json_data = json_decode($data , true);


if(isset($_POST['message']) && !empty($_POST['message']))
               {
                     
                     // $sender = $_POST['sender']; 
                     // $receiver= $_POST['receiver']; 
                     // $message= $_POST['message'];
          $sender = "sam";
          $receiver = "1234";
          $message = "adcd efgh";

                     include_once('Session_Variables.php');

 //                      $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES('$sender', '$receiver', '$message')";

 // if (mysqli_query($conn, $sql)) {

 //        Check_Option($UserOption);

 //    }
         $data  = array('message' => $message,'sender' => $sender,'receiver' => $sender );
         echo json_encode($data);
                }





//  session_start();
//  $_SESSION['message']= $json_data['message'];
//    $_SESSION['receiver']= $json_data['receiver'];
//    $_SESSION['sender']= $json_data['sender'];

// // if (isset($_POST['message']) && !empty($_POST['message'])) {
//     //including all the session variables
//         include_once('Session_Variables.php');

//     $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES('$sender', '$receiver', '$message')";

// 	if (mysqli_query($conn, $sql)) {

//         Check_Option($UserOption);

//     }

    
   
// }


