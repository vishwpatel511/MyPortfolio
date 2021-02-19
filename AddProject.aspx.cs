using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP229_S2016_Lesson2.Models;
using System.Web.ModelBinding;

namespace COMP229_S2016_Lesson2
{
	public partial class AddProject : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void CancelButton_OnClick(object sender, EventArgs e)
        {
            Page.Response.Redirect("~/Home.aspx");
        }

        protected void SaveButton_OnClick(object sender, EventArgs e)
        {

            using (ProjectsContext db = new ProjectsContext())
            {
                project newProject = new project();

                newProject.projectName = ProjectName.Text;
                newProject.LastModified = Convert.ToDateTime(LastModified.Text);
                newProject.description = ProjectDescription.Text;
                newProject.languagesUsed = LanguagesUsed.Text;
                newProject.resources = Resources.Text;

                db.projects.Add(newProject);

                db.SaveChanges();

                Page.Response.Redirect("~/Projects.aspx");


            }


        }
    }
}