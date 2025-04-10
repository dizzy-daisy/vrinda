<?php
include "conn.php";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $long = $_POST['long'];
    $lati = $_POST['lati'];
    $bus = $_POST['bus'];

    // Step 1: Get the BUS_ID using the bus number
    $qu1 = "SELECT BUS_ID FROM bus WHERE BUS_NUMBER='$bus'";
    $result = $conn->query($qu1);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $bus_id = $row['BUS_ID'];

        // Step 2: Update the bus_status table using the bus_id
        $qu = "UPDATE bus_status SET LATITUDE='$lati', LONGITUDE='$long' WHERE BUS_NUMBER='$bus_id'";
        if ($conn->query($qu)) {
            echo "Location updated successfully.";
        } else {
            echo "Error updating location: " . $conn->error;
        }
    } else {
        echo "Bus number not found in database.";
    }
}

$conn->close();
?>
