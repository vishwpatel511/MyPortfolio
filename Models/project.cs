namespace COMP229_S2016_Lesson2
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class project
    {
        public short projectID { get; set; }

        [StringLength(255)]
        public string projectName { get; set; }

        [StringLength(255)]
        public string languagesUsed { get; set; }

        [StringLength(255)]
        public string description { get; set; }

        [StringLength(255)]
        public string resources { get; set; }

        [Column(TypeName = "date")]
        public DateTime? LastModified { get; set; }
    }
}
