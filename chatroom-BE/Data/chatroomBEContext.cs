using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using chatroomBE.Models;

namespace chatroomBE.Models
{
    public class chatroomBEContext : DbContext
    {
        public chatroomBEContext (DbContextOptions<chatroomBEContext> options)
            : base(options)
        {
        }

        public DbSet<chatroomBE.Models.User> User { get; set; }

        public DbSet<chatroomBE.Models.Post> Post { get; set; }
    }
}
