/*
 *Custom JavaScript goes here
 *
 */
var app;
(function (app) {


    function Start() {


        document.getElementById("Home").addEventListener("click", function() {
            console.log("Home button was clicked!!");
        });

        var title = document.title;

        switch (title) {

        case "Home":

                var Home = document.getElementById("Home");
                Home.setAttribute("id", "ActiveLink");
                Home.style.backgroundColor = "#000034";
                Home.style.textDecoration = "underline";

                break;

            case "About":

                document.getElementById("About").style.backgroundColor = "#000034";

            break;
            case "Contact":
                document.getElementById("Contact").style.backgroundColor = "#000034";

            break;
            case "Projects":
        
                document.getElementById("Projects").style.backgroundColor = "#000034";
            break;
        }

        $(document).ready(function () {
            $("#show_login").click(function () {
                showpopup();
            });
            $("#close_login").click(function () {
                hidepopup();
            });
        });

        function showpopup() {
            $("#loginform").fadeIn();
            $("#loginform").css({ "visibility": "visible", "display": "block" });
        }

        function hidepopup() {
            $("#loginform").fadeOut();
            $("#loginform").css({ "visibility": "hidden", "display": "none" });
        }

        window.onload = Start;
    }
})(app || (app = {}));