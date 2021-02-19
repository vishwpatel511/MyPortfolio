using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

// required for OWIN startUp
using Microsoft.AspNet.Identity;
using  Microsoft.Owin.Security.Cookies;


[assembly: OwinStartup(typeof(COMP229_S2016_Lesson2.StartUp))]

namespace COMP229_S2016_Lesson2
{
    public class StartUp
    {
        public void Configuration(IAppBuilder app)
        {
          
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Login.aspx")
            });

        }
    }
}
