using System;
using System.Collections.Generic;

#nullable disable

namespace ScaffoldingHomework
{
    public partial class Author
    {
        public Author()
        {
            Articles = new HashSet<Article>();
        }

        public Guid Id { get; set; }
        public string FullName { get; set; }

        public virtual ICollection<Article> Articles { get; set; }
    }
}
