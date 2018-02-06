using System;
using System.Collections.Generic;

namespace HeroClixWebApp.Models
{
    public partial class Decks
    {
        public int DeckId { get; set; }
        public int? UserId { get; set; }
        public string Deckname { get; set; }

        public virtual Team Team { get; set; }
        public virtual Users User { get; set; }
    }
}
