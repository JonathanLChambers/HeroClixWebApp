using System;
using System.Collections.Generic;

namespace HeroClixWebApp.Models
{
    public partial class Team
    {
        public int DeckId { get; set; }
        public int? CharacterId { get; set; }

        public virtual CharacterTable Character { get; set; }
        public virtual Decks Deck { get; set; }
    }
}
