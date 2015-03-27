<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMe.aspx.cs" Inherits="jQueryDemo.ShowMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        window.onload = function () {
            navigator.geolocation.getCurrentPosition(function (position) {
                document.getElementById('out').innerHTML = "Latitude: " + position.coords.latitude + " Longitude: " + position.coords.longitude;

            });
        };

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<div id="out"></div>



    </div>
    </form>
</body>
</html>
