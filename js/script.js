let hold = document.getElementsByClassName("hold")[0]; // Use [0] to access the first matching element

async function kuch_bhi() {
    await fetch('http://localhost/pt/backend/index.php')
    .then(response => response.json())
    .then(data => {
        const kuch_bhi2 = Array.from(data);
        kuch_bhi2.forEach(a => {
            const {bus_id, bus_number, route_name, stops } = a;
            let card = document.createElement("div");
            card.classList.add("card");
            card.innerHTML = `
                <div class="scard"><img class="imgcard" src="images/bus.png" alt="bus"></div>
                <div class="scard">
                    <div class="stext">
                        Bus No. - ${bus_number}
                    </div>
                    <div class="stext">
                        Route - ${route_name}
                    </div>
                    <div class="stext">
                        Stops: ${stops}
                    </div>
                    <button class="track" onclick="window.location.href='track.html?bus=${bus_id}'">
                        track
                    </button>
                </div>
            `;
            hold.appendChild(card);
        });
    })
    .catch(error => console.error("Error fetching data:", error));
}

kuch_bhi();
