<?php
include_once('db.php');

$conn = new mysqli("localhost", "root", "", "penzi");


function getP($county, $gender1, $min, $max)
{
    $conn = new mysqli("localhost", "root", "", "penzi");
    $sql = "SELECT * FROM `users` 
                WHERE `county` = '$county' 
                AND `gender` = '$gender1' 
                AND `age` BETWEEN '$min' 
                AND '$max' ORDER BY ID 
                DESC  LIMIT 0, 10";

    $result = mysqli_query($conn, $sql);
    $check = mysqli_num_rows($result);
    if ($check > 0) {
        while ($row = mysqli_fetch_assoc($result)) {

            $name = $row['name'];
            $age = $row['age'];
            $phone = $row['phone_no'];
            return $message = users($name, $age, $phone);
        }
    }
}
function Check_Option($results)
{
    if ($results == "PENZI") {

        include_once('check_reg.php');
    } elseif ($results == "START") {

        include_once('start_reg.php');
    } elseif ($results == "DETAILS") {

        include_once('detail_reg.php');
    } elseif ($results == "MYSELF") {

        include_once('myself_reg.php');
    } elseif ($results == "MATCH") {

        include_once('match.php');
    } elseif ($results == "NEXT") {

        include_once('next.php');
    } elseif ($results == "DESCRIBE") {

        include_once('describe_penzi.php');
    } elseif (is_numeric($results)) {
        include_once('details_show.php');
      
    } elseif ($results == "DEACTIVATE") {
        $data = array("status" => "success", "data" => "DEACTIVATE");

        echo json_encode($data);
   }  // elseif ($results == "YES") {
    //     include_once('yes.php');
    // }
     else {

        include_once('incorrect_format.php');

        // echo json_encode($data);
    }
}


//function to get the number of pe
function Match_No($number)
{
    $messageM = $number . " person(s) were found who match your choice! We will send you details  of them shortly.
	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 " . PHP_EOL . " .";
    return $messageM;
}
//to concanate the message of user details
function users($name, $age, $phone)
{
    $text = "{$name}, aged {$age}, {$phone}";
    return $text;
}


function insert($receiver, $sender, $outgoingMessage)
{
    $conn = new mysqli("localhost", "root", "", "penzi");
    $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES( '$receiver', '$sender', '$outgoingMessage')";
    if (mysqli_query($conn, $sql)) {
        $response = array("status" => true, "message" => $outgoingMessage , "sender" => $receiver);
        echo json_encode($response);
    } else {
        $response = array("status" => false, "message" => "Error: " . $sql . "<br>" . $conn->error, "sender" => $receiver );
        echo json_encode($response);
    }
}

//inserting state of the message
// function insertc($receiver, $sender, $messa, $state);
function insertc($receiver, $sender, $outgoingMessage, $state)
{
    $conn = new mysqli("localhost", "root", "", "penzi");
    $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES( '$receiver', '$sender', '$outgoingMessage')";
    if (mysqli_query($conn, $sql)) {

        $response = array('status' => "error", 'sender' => $receiver, 'message' => $outgoingMessage );
            echo json_encode($response);

        // $data = array("status" => $state, "data" => $outgoingMessage);
        // echo json_encode($data);
    }
}

//function to the matchedpenzi no in respect to the senders number
function insert_match($sender, $searched)
{
    include('db.php');
    $query = "INSERT INTO `match_log` ( `searcher`, `searched`)
                 VALUES ( '$sender', '$searched');";
    $results = mysqli_query($conn, $query);
    if ($results) {
    }
}
// function to mark the user as seen
function UpdatePenziStatusSeen($sender, $searched)
{
    include('db.php');
    $SqlUpdate = "UPDATE `match_log` SET `status` = '1' WHERE `searched` = '$searched' AND searcher = '$sender' ";
    $result = mysqli_query($conn, $SqlUpdate);
    if ($result) {
    }
}


//function to insert the matched penzis to the matchlog table
function FindInsertMatchMate($county, $gender1, $min, $max, $sender)
{

    include('db.php');
    // $sql = "SELECT * FROM `users` WHERE `county` = '$county' AND `gender` = '$gender1' AND `age`
    // 		BETWEEN '$min' AND '$max' ORDER BY ID DESC  LIMIT 0, 3";
    $sql = "SELECT * FROM `users` WHERE `county` = '$county' AND `gender` = '$gender1' AND `age`
			BETWEEN '$min' AND '$max'";
    $result = mysqli_query($conn, $sql);
    $check = mysqli_num_rows($result);


    if ($check > 0) {
        while ($row = mysqli_fetch_assoc($result)) {

            $name = $row['name'];
            $age = $row['age'];
            $phone = $row['phone_no'];


            insert_match($sender, $phone);
            // $Query = "SELECT * FROM `match_log` WHERE `searched` = '$sender' AND  `searched` !=  '$sender' ";
            // $results = mysqli_query($conn, $Query);
            // $rows = mysqli_num_rows($results);
            // if($rows < 0){


            // }

        }
    }
}
function FindInsertNewMatchMate($county, $gender1, $min, $max, $sender)
{

    include('db.php');
    // $sql = "SELECT * FROM `users` WHERE `county` = '$county' AND `gender` = '$gender1' AND `age`
    // 		BETWEEN '$min' AND '$max' ORDER BY ID DESC  LIMIT 0, 3";
    $sql = "SELECT * FROM `match_log` WHERE `searcher` = '$sender'";
    $result = mysqli_query($conn, $sql);
    $check = mysqli_num_rows($result);


    if ($check > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            
            $previousdPenzi_No[]  = $row['searched'];
        }
        $implodePreviousPenzi_No = implode(', ', $previousdPenzi_No);
        $sql = "SELECT * FROM `users` WHERE  `phone_no`
                   NOT IN ({$implodePreviousPenzi_No} AND `county` = '$county' 
                  AND `gender` = '$gender1' AND `age`
        		BETWEEN '$min' AND '$max')";
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
             $phone = $rows['phone_no'];

           insert_match($sender, $phone);
        }
    }
}

//function to display the matched penzi to the user
function SelectShowPenzi($sender)
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
        $Matches_remaining = Remaining_Matches($sender);
        $messageAttached = "Send  Next to 25005 to receive details of the remaining { $Matches_remaining} persons";
        return $implodedMatch . ": " . $messageAttached;
    }
}
//function to find the remaining date match
function Remaining_Matches($sender)
{
    include('db.php');
    $sql = "SELECT * FROM `match_log` WHERE  `searcher` = '$sender' AND `status` = '0' ";
    $result = mysqli_query($conn, $sql);
    $rows = mysqli_num_rows($result);
    if ($rows > 0) {
        return $rows;
    }
}


//gets the matches that match the sender requestss
function ShowCount($county, $gender1, $min, $max)
{
    $conn = new mysqli("localhost", "root", "", "penzi");

    $query = "SELECT * FROM users WHERE `county` = '$county' AND `gender` = '$gender1' AND `age` BETWEEN '$min' AND '$max' ";
    // Execute the query and store the result set 
    $result = mysqli_query($conn, $query);
    if ($result) {
        $row = mysqli_num_rows($result);
        if ($row > 0) {
            // code...
            // $messa = Match_No($row) . " " . getP($county, $gender1, $min, $max);
            $messa = Match_No($row);

            return $messa;
        }
    }
}
// insert the sender penzi preference to the database
function InsertPref($sender, $minAge, $maxAge, $county, $genderMatch)
{
    $conn = new mysqli("localhost", "root", "", "penzi");

    $query = "SELECT * FROM match_pref WHERE `phone` = '$sender'";
    $result = mysqli_query($conn, $query);
    if ($result) {
        $row = mysqli_num_rows($result);
        if ($row > 0) {
            $query = "UPDATE `match_pref` SET `min_age`= '$minAge', 
            `max_age`='$maxAge', `county`='$county', `gender_match` ='$genderMatch' 
            WHERE `phone` = '$sender'";
            // Execute the query and store the result set 
            $result = mysqli_query($conn, $query);
            if ($result) {
            }
        } else {

            $query = "INSERT INTO `match_pref` ( `phone`, `min_age`, `max_age`, `county`) VALUES ( '$sender', '$minAge', '$maxAge', '$county')";
            // Execute the query and store the result set 
            $result = mysqli_query($conn, $query);
            if ($result) {
            }
        }
    } else {
        # code...
    }
}
