<?php
$conn=new mysqli("localhost","root","","vrinda");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>