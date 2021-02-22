/*
 *Custom JavaScript goes here
 *
 */

// IIFE 

(function() {


    function initial() {


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

        case "Login":

            

            break;
        }


        $(function() {
            document.getElementsByClassName("RegisterButton")[0].addEventListener("click", inputValidation_Reg());
        });



            $(function inputValidation_Reg() {
            console.log(document.getElementById('#Reg_FirstNameTextBox'));
            var firstName = document.getElementById('#Reg_FirstNameTextBox');
            if (firstName.value.length < 3) {

                firstName.focus();
                StatusLabel.Text = "Please enter valid first name";
                AlertFlash.Visible = true;
            }
        });


    }


    


    window.onload = initial();

}());


















