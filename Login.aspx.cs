using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Manually added using statements
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace COMP229_S2016_Lesson2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_OnClick(object sender, EventArgs e)
        {
            //create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            //search for and create a new user object
            var user = userManager.Find(LoginUserNameTextBox.Text, PasswordTextBox.Text);

            // if the user is found
            if (user != null)
            {
                // Authenticate and let the user login
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties()
                {
                    IsPersistent = false},
                        userIdentity
                );

                Response.Redirect("~/AddProject.aspx");

            }

            else
            {
                StatusLabel.Text = "Invalid username / password";
                AlertFlash.Visible = true;
            }

        }

        protected void forgetPassword_OnClick(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void RegisterButton_OnClick(object sender, EventArgs e)
        {
            // create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // create a new user object
            var user = new IdentityUser()
            {
                
                UserName = UserNameTextBox.Text,
                PhoneNumber = Reg_PhoneNumberTextBox.Text,
                Email = Reg_EmailTextBox.Text,
                
            };

            // create a new user in the db and store the results
            IdentityResult result = userManager.Create(user, PasswordTextBox.Text);

            // check if successfully registered?
            if (result.Succeeded)
            {
                // authenticate and login our new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                // Redirect to the Main Menu Page
                Response.Redirect("~/AddProject.aspx");
            }
            else
            {
                // display error in the AlertFlash div
                StatusLabel.Text = result.Errors.FirstOrDefault();
                AlertFlash.Visible = true;
            }
        }
    }
    }
