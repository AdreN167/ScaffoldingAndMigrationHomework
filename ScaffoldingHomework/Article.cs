using System;
using System.Collections.Generic;

#nullable disable

namespace ScaffoldingHomework
{
    public partial class Article
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public Guid AuthorId { get; set; }
        public Guid CategoryId { get; set; }
        public DateTime PublishDate { get; set; } // добавил

        public virtual Author Author { get; set; }
        public virtual Category Category { get; set; }
    }
}
