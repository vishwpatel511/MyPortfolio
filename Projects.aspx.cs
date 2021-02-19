using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// Added manually in order the get the access of EF
using COMP229_S2016_Lesson2.Models;
using System.Web.ModelBinding;

namespace COMP229_S2016_Lesson2
{
    public partial class Projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the page is being load for the first time
            // populate the table from the database

            if (!IsPostBack)
            {
                this.GetProjects();
            }

            


        }

        // Retrieves the projects from the database up on the cloud
        private void GetProjects()
        {
            using (ProjectsContext db = new ProjectsContext())
            {
                // using linq to get the projects
                var getProjects = from projects in db.projects select projects;

                // Now, binding the result to the gridview we created

                ProjectsGridView.DataSource = getProjects.ToList();
                ProjectsGridView.DataBind();
            }
        }

        protected void ProjectsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            // Getting the selected row index
            int selectedRow = e.RowIndex;

            int projectID = Convert.ToInt32(ProjectsGridView.DataKeys[selectedRow].Values["ProjectID"]);
          
          

          using (ProjectsContext db = new ProjectsContext())
          {
              
                  project deleteProject = (from projectrecord in db.projects
                      where projectrecord.projectID == projectID
                      select projectrecord).FirstOrDefault();


                  db.projects.Remove(deleteProject);
                  db.SaveChanges();
                  this.GetProjects();
              
          }


        }
    }
}