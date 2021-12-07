<?php
if (isset($_SESSION['message'])) {

    $message = $_SESSION['message'];
    $receiver = $_SESSION['receiver'];
    $sender = $_SESSION['sender'];



    
    $data = array("status" => "success", "data" => "YES");

    echo json_encode($data);
}
