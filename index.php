<?php
$servername = "localhost";
$username = "halodev";
$password = "bh!nneKa1";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "This is Halosis development site. Database connected successfully";
?>
