<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db.php';

$sql = "SELECT * FROM `users` ";
    $result = mysqli_query($conn, $sql);
    $check = mysqli_num_rows($result);

    if ($check > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $data = array( $row);
              echo json_encode($data);
         // echo json_encode(["success" => 1, "users" => $row]);
        }
      // echo json_encode(["success" => 1, "users" => $check]);
     }

?>




<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "penzi";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
    $trp = mysqli_query($conn, "SELECT * from `users`");
    // $rows = array();
    while ($row = mysqli_fetch_assoc($trp)) {
            $data = array( $row);
              echo json_encode($data);
         // echo json_encode(["success" => 1, "users" => $row]);
        }
    //  echo json_encode($rows);
    // // $data = array( $rows);
              
    // print json_encode($data); //convert php data to json data
?>


