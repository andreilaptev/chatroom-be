using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace chatroomBE.Models
{
    public class Post
    {
        public int PostId { get; set; }
        public string Content { get; set; }
        public int LikesNo { get; set; }
        public DateTime Time { get; set; }
        public int UserId { get; set; }
    }
}
