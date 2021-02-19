namespace COMP229_S2016_Lesson2.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ProjectsContext : DbContext
    {
        public ProjectsContext()
            : base("name=ProjectsContext")
        {
        }

        public virtual DbSet<project> projects { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
