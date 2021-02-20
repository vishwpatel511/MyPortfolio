/*
 *Custom JavaScript goes here
 *
 */
var app;
(function (app) {

    $(document).ready(function () {
        console.log("jquery trigerring!");
        $("a.btn.btn-danger.btn-sm").click(function () {

         //   return confirm("Are you sure you want to delete this record?");

         $("ModalForLogin").css({"visibility": "visible", "display": "block"});
        });

    });

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


     
        
        window.onload = Start;
    }

})(app || (app = {}));