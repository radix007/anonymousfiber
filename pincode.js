let pinCodes = [110005, 110006, 110007, 110038, 110008, 110054, 110055, 110060, 110071, 110084, 110085.122003, 122011, 122007, 122011, 302005, 302007];

function pinCode() {
    let pinValue = parseInt(document.getElementById("pin").value);
    if (pinCodes.indexOf(pinValue) !== -1) {
        alert("your pin is valid");
    } else if (Number.isInteger(pinValue)) {
        alert("Not available at your location");
    } else {
        alert("Invalid Entry");
    }
}