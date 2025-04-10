<?php
header('Content-Type: application/json'); // Ensures JSON response

$conn = new mysqli("localhost", "root", "", "vrinda");

if ($conn->connect_error) {
    echo json_encode(["error" => "Database connection failed"]);
    exit();
}

$qu = "SELECT latitude, longitude FROM locations WHERE id=1";
$ans = $conn->query($qu);

if ($ans->num_rows > 0) {
    echo json_encode($ans->fetch_assoc());
} else {
    echo json_encode(["latitude" => 0, "longitude" => 0]); // Default values
}

$conn->close();
?>
