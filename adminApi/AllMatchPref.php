<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db.php';

$sql = "SELECT * FROM `match_pref` ";
    $result = mysqli_query($conn, $sql);
    $check = mysqli_num_rows($result);

    if ($check > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            // $data = array_push([], $row);
            $data[] = $row;
        }
              echo json_encode($data);
        // echo $data;

      // echo json_encode(["success" => 1, "users" => $check]);
     }

?>


