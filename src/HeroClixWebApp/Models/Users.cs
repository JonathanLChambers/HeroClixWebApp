using System;
using System.Collections.Generic;

namespace HeroClixWebApp.Models
{
    public partial class Users
    {
        public Users()
        {
            Decks = new HashSet<Decks>();
        }

        public int UserId { get; set; }
        public string Usernames { get; set; }
        public string Passwords { get; set; }

        public virtual ICollection<Decks> Decks { get; set; }
    }
}
