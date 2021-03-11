using System;
using System.Linq;

namespace ScaffoldingHomework
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var context = new ArticleDbContext())
            {
                context.Add(new Article
                {
                    Id = Guid.NewGuid(),
                    PublishDate = DateTime.Now,
                    AuthorId = context.Authors.First().Id,
                    CategoryId = context.Categories.First().Id,
                    Name = "Как правильно пользоваться пылесосом"
                });

                context.SaveChanges();
            }
        }
    }
}
