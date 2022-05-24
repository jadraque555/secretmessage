<?php
$servername = "184.168.116.165";
$username = "kylezagado";
$password = "kylezagado";
$database = "secret-message";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>