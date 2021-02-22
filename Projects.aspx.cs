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
using System.Linq.Dynamic;

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
                Session["sortColumn"] = "Project ID";
                Session["SortDirection"] = "ASC";

                this.GetProjects();

            }




        }

        // Retrieves the projects from the database up on the cloud
        private void GetProjects()
        {
            using (ProjectsContext db = new ProjectsContext())
            {
                string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();
                // using linq to get the projects
                var getProjects = from projects in db.projects select projects;

                // Now, binding the result to the gridview we created

                // To be corrected
              //  ProjectsGridView.DataSource = project.OrderBy(SortString).ToList();
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

        protected void ProjectsGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            // get the column to sort by
            Session["SortColumn"] = e.SortExpression;
            this.GetProjects();


        }

        protected void PageSizeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            // set the new page size
            ProjectsGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            //refresh the GridView
            this.GetProjects();

            // toggle the direction 
            Session["SortDirection"] = Session["SortDirection"].ToString() == "ASC" ? "DESC" : "ASC";

        }

        protected void ProjectsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.Row.RowType == DataControlRowType.Header) // if  the header row has been clicked
                {
                    LinkButton linkButton = new LinkButton();
                    for (int i = 0; i < ProjectsGridView.Columns.Count - 1; i++)
                    {
                        if (ProjectsGridView.Columns[i].SortExpression == Session["SortColumn"].ToString())
                        {
                            if (Session["SortDirection"].ToString() == "ASC")
                            {
                                linkButton.Text = " <i class='fa fa-caret-up fa-lg'></i>";
                            }

                            else
                            {
                                linkButton.Text = " <i class = 'fa fa-caret-down fa-lg'></i>";
                            }

                            e.Row.Controls.Add(linkButton);

                        }
                    }
                }
            }

        }

        protected void ProjectsGridViewIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ProjectsGridView.PageIndex = e.NewPageIndex;

        }
    }
}