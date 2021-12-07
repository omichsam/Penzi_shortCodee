<?php
include_once('function.php');



for ($i = 10; $i > 0; $i++) {


    $message = $_SESSION['message'];
    $receiver = $_SESSION['receiver'];
    $sender = $_SESSION['sender'];


    $sql = "SELECT * FROM  `match_pref` ";
    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $phone = $row['phone'];
        getNewPenzi($phone);
    }
function getNewPenzi($sender){
    include('db.php');
    $sql = "SELECT * FROM  `match_log` WHERE `phone_no` = '$sender'";
    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $minAge = $row['min_Age'];
        $maxAge = $row['max_Age'];
        $county = $row['county'];
        $penziGender = $row['gender_match'];
    }


    FindInsertNewMatchMate($county, $penziGender, $minAge, $maxAge, $sender);
    // /function to display the matched penzi to the user
    // function SelectShowPenzi($sender)
    $newPenziMatchNumbers = Remaining_Matches($sender);

    $MessageOut = " Hi {$name}, Last time you wanted date of Age {$minAge} - {$maxAge} based in {$county}. 
  We have {$newPenziMatchNumbers} new members matching your your choice. Are your interested? Send YES to 5001";
  insert("25005", $phone, $MessageOut);
}


    ob_flush();
    flush();
    sleep(5);
}

echo "Done.";

ob_end_flush();
