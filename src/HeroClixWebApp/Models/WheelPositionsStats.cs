using System;
using System.Collections.Generic;
using System.Linq;

namespace HeroClixWebApp.Models
{
    public partial class WheelPositionsStats
    {
        public int Pid { get; set; }
        public int? OrdinalPosition { get; set; }
        public int? CharacterId { get; set; }
        public int? StatId { get; set; }
        public int? Value { get; set; }

        public virtual WheelPositionsSkills WheelPositionsSkills { get; set; }
        public virtual CharacterTable Character { get; set; }
        public virtual BaseStat Stat { get; set; }

        private COOLSTUFFContext db = new COOLSTUFFContext();
        //public int ordinalPosition;
        public static IEnumerable<WheelPositionsStats> GetWheelPositionsStatsByCharacterIdAndOrdinalPosition(
            int CharacterID, int? ordinalPosition)
        {
            COOLSTUFFContext db = new COOLSTUFFContext();
            var query = from a in db.WheelPositionsStats where a.CharacterId.Equals(CharacterID) && a.OrdinalPosition.Equals(ordinalPosition) select a;
            return query;
        }
    }
}
