<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "penzi";

// Create connection
$conn = new mysqli("localhost", "root", "", "penzi");
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

?>