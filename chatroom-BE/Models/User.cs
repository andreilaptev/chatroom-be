using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace chatroomBE.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string UserFullName { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public List<Post> Posts { get; set; }
    }
}
