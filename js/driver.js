let bus=5358;
function sendNotification() {
    if (navigator.geolocation) {
        navigator.geolocation.watchPosition(function(position) {
            const latitude = position.coords.latitude;
            const longitude = position.coords.longitude;

            const formData = new FormData();
            formData.append("lati", latitude);
            formData.append("long", longitude);
            formData.append("bus", bus);
            fetch("backend/driver.php", {
                method: "POST",
                body: formData
            })
            .then(response => response.text())
            .then(data => {
                alert("Server response: " + data);
            })
            .catch(error => {
                console.error("Error:", error);
            });
        }, function(error) {
            alert("Error getting location: " + error.message);
        });
    } else {
        alert("Geolocation is not supported by your browser.");
    }
}