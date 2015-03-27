<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="jQueryDemo.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/_references.js"></script>
    <script>
   //     $(function () {
   //        // var x = document.getElementById("demo");
   //         var x = $("#demo");
        //});
        var x = document.getElementById("demo");
            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition);
                } else {
                    x.innerHTML = "Geolocation is not supported by this browser.";
                }
            }

            function showPosition(position) {
               alert("Latitude: " + position.coords.latitude +
                "<br>Longitude: " + position.coords.longitude);
                return false;
            }
     
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Click the button to get your coordinates.</p>

<button id="navbut" onclick="getLocation()">Try It</button>

<p id="demo"></p>
    </div>
    </form>
</body>
</html>
