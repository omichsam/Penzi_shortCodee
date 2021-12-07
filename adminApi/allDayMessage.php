<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require 'db.php';

$sql = "SELECT * FROM `message`  WHERE `date` >= CURRENT_DATE() ";
    $result = mysqli_query($conn, $sql);
    $check = mysqli_num_rows($result);

    if ($check > 0) {
         $data[] = $check;
        
             
     }
     else{
                $data[] ='0';

     }
     echo json_encode($data);

?>


