<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="jQueryDemo.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
        <script>
            // Load when windows loads
            window.onload = function () {
                // set out variable to be the div with id = "out"
                var out = document.getElementById('out');
                // Get position
                navigator.geolocation.getCurrentPosition(function (position) {
                    // Set latitude and Longitude variables
                    var latitude = position.coords.latitude;
                    var longitude = position.coords.longitude;
                    // write position to the "out" variable
                 out.innerHTML = "Latitude: " + latitude + " Longitude: " + longitude;
                // create iframe and destination url for iframe src
                 var mapUrl = "https://www.google.com/maps/embed/v1/directions?key=AIzaSyArBNkl-jmTkl9fu8nQoDBAi7Zv7CFeFZI&origin=" + latitude + "," + longitude + "&destination=38+Belwood+Crescent,+Kitchener,+ON+N2C+1Z3";
                 var mapLink = "https://www.google.ca/maps/dir/" + latitude + "," + longitude + "/38+Belwood+Crescent,+Kitchener,+ON+N2C+1Z3"
                 document.write('<iframe src="' + mapUrl + '" width="650" height="450"></iframe><br />');
                 document.write('<a href="' + mapLink + '" target="_blank">Click here for directions</a><br />');
                });
                
            };

     </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <br />
        
<p id="out"></p>
    </div>
    </form>
</body>
</html>
