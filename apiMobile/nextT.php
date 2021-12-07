<?php

include_once('db.php');

include_once('function.php');

// getting the number of all the people that match the request of the user
$sender = '0707726836';
function getTotalMatch($county, $gender_match, $minAge, $maxAge)
{
    include('db.php');
    $query = "SELECT * FROM users WHERE `county` = '$county' AND `gender` = '$gender_match' AND `age` BETWEEN '$minAge' AND '$maxAge' ";
    // Execute the query and store the result set 
    $result = mysqli_query($conn, $query);
    if ($result) {
        $row = mysqli_num_rows($result);
        if ($row > 0) {
            // code...
            // $messa = Match_No($row) . " " . getP($county, $gender1, $min, $max);
            // $messa = "{$row} people matched your request";
            // $data = array("status" => "success", "data" => $messa);
            // echo json_encode($data);
            return $row;
        }
    }
}

// getting the user preference for the match
function getPref($sender)
{
    include('db.php');
    $sql = "SELECT county, max_age, min_age, gender_match FROM `match_pref` WHERE `phone`='$sender'";
    $result = mysqli_query($conn, $sql);
    // if($result){}
    while ($row = mysqli_fetch_array($result)) {
        // $county = $row["county"];
        // $minAge = $row["max_age"];
        // $maxAge = $row["min_age"];
        // $gender_match = $row["gender_match"];

        return $row;
    }
}
// getting the number of all the people the searcher has searched
function showSearched($sender)
{
    include('db.php');
    $query = "SELECT * FROM match_log WHERE `searcher` = '$sender' ";
    // Execute the query and store the result set 
    $result = mysqli_query($conn, $query);
    if ($result) {
        $row = mysqli_num_rows($result);
        if ($row > 0) {

            return $row;
            // $messa = $row. "people found";
            // $data = array("status" => "success", "data" => $messa);
            // echo json_encode($data);
            //return $messa;
        }
    }
}


$pref = getPref('708726836');
$county = $pref['county'];
$maxAge = $pref['max_age'];
$minAge = $pref['min_age'];
$gender_match = $pref['gender_match'];


$totalMatch = getTotalMatch($county, $gender_match, $minAge, $maxAge);
$searchedPenzi = showSearched('708726836');
$unsearched = $totalMatch - $searchedPenzi;
// echo $totalMatch;
echo $unsearched;

if ($unsearched > 3) {
    echo "{$unsearched} are above";

    echo"<br><br>";
   echo getTheNextPenzi($sender, $gender_match, $county,$minAge, $maxAge);
} else {
    echo "{$unsearched} are below";
    echo"<br><br>";
   echo  getTheNextPenzi($sender, $gender_match , $county,$minAge, $maxAge);
}


function getTheNextPenzi($sender, $genderMatch, $county,$minAge, $maxAge){
           include('db.php'); 
        $query = "SELECT u.phone_no, u.age, u.name, u.gender
        FROM users u
        LEFT JOIN match_log c ON c.searcher = '$sender' 
        AND   c.searched = u.phone_no
        WHERE c.searched IS NULL 
        AND u.gender = '$genderMatch'
        AND u.county= '$county' AND 
        u.age BETWEEN '$minAge' AND '$maxAge'
        ";

    //  $query =   " SELECT `name`, `age`, `phone_no` FROM `users`
    //             WHERE `phone_no` = '$sender' AND `phone_no`  NOT IN(
    //             SELECT `searched` FROM `match_log` where `searcher` = '$sender')";

        $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
        while ($row = mysqli_fetch_array($result)) {


        $name = $row['name'];
        $age = $row['age'];
        $phone = $row['phone_no'];
        $matches[] = users($name, $age, $phone);

        }
    
        $implodeMatches = implode(",", $matches);
        return $implodeMatches;


}
