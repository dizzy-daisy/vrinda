<?php
$conn=new mysqli("localhost","root","","vrinda");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected successfully!";
}
if($_SERVER["REQUEST_METHOD"]=="POST"){
    $long=$_POST['long'];
    $lati=$_POST['lati'];
    $qu="UPDATE locations SET latitude='$lati', longitude='$long' WHERE id=1";
    $conn->query($qu);
    
}
$conn->close();
?>