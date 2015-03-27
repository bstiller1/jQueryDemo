<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jQueryDemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/_references.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome</h1>
        <h2>My Page</h2>
        <p>Welcome to my page.</p>
    </div>
        <p><label>Write your name: <input type="text" id="NameBox" /></label></p>
        <input type="button" id="submit" value="Click to submit" />
    </form>
    <div id="ThankYouArea"></div>
    <script type="text/javascript">
        $(function () {
            $("#submit").click(
                function () {
                    var username = $("#NameBox").val();
                    $("#ThankYouArea").html("<p>Thank you " + username + "</p>");
                })
        })
    </script>
</body>
</html>
