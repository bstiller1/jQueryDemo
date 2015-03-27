<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="jQueryDemo.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/_references.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Click the button to get your coordinates.</p>

<button onclick="getLocation()">Try It</button>

<p id="demo"></p>
    </div>
    </form>
</body>
</html>
