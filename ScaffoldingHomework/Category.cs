using System;
using System.Collections.Generic;

#nullable disable

namespace ScaffoldingHomework
{
    public partial class Category
    {
        public Category()
        {
            Articles = new HashSet<Article>();
        }

        public Guid Id { get; set; }
        public string Name { get; set; }
        //public string Description { get; set; } убрал

        public virtual ICollection<Article> Articles { get; set; }
    }
}
