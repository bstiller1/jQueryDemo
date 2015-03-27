/// <reference path="jquery-2.1.3.js" />

// Document Ready
$(function() {
    $("h2").each(function () {
        this.style.color = "red";
    })
    $("p").each(function(){
        $(this).css("color", "red");
    })
    $("h1").html("<h1>New Heading</h1>");

    $("#Button1").click(
             function () {
                 var fname = $("#TextBox1").val();
                 var lname = $("#TextBox2").val();
                 var email = $("#TextBox3").val();
                 var comments = $("#TextBox4").val();

                 if ((fname == "") || (lname == "") || (email == "")) {
                     $("#Label5").html("Required fields were not filled.");
                     return false;
                 }

                 $.ajax({
                     method: "POST",
                     url: "http://blakestiller.com/formdata.php",
                     dataType: "text",
                     data: { "First Name": fname, "Last Name": lname, "Email Address": email, "Comments": comments },
                     success: function (result) {
                         $("#Label5").html(result);
                     },
                     error: function (result) {
                         $("#Label5").html(result);
                     },
                     
                     xhrFields: {
                         withCredentials: true
                     }
                 });
                 return false;

             })
    //var x = document.getElementById("demo");

    //function getLocation() {
    //    if (navigator.geolocation) {
    //        navigator.geolocation.getCurrentPosition(showPosition);
    //    } else {
    //        x.innerHTML = "Geolocation is not supported by this browser.";
    //    }
    //}

    //function showPosition(position) {
    //    alert("Latitude: " + position.coords.latitude +
    //    "<br>Longitude: " + position.coords.longitude);
    //    return false;
    //}
});

