using System;
using System.Collections.Generic;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace HeroClixWebApp.Models
{
    public partial class WheelPositionsSkills
    {
        public int Pid { get; set; }
        public int? OrdinalPosition { get; set; }
        public int? CharacterId { get; set; }
        public int? SkillId { get; set; }

        public virtual CharacterTable Character { get; set; }
        public virtual WheelPositionsStats P { get; set; }
        public virtual Skills Skill { get; set; }

        public class SkillID 
        {
            public int? SkillId { get; set; }
        }

        public class DescriptionName
        {
            public String SkillName { get; set; }
            public String SkillDescription { get; set; }
        }
        public static IEnumerable<DescriptionName> GetWheelPositionsSkillsByCharacterIdAndOrdinalPosition(
           int CharacterID, int? ordinalPosition)
        {
            var ListofSkillID = Enumerable.Empty<SkillID>();
            COOLSTUFFContext db = new COOLSTUFFContext();
            // var query = from a in db.WheelPositionsSkills where a.CharacterId.Equals(CharacterID) && a.OrdinalPosition.Equals(ordinalPosition) select a;
            if (ordinalPosition != null)
            {
                ListofSkillID =
                        db.WheelPositionsSkills
                            .Where(x => x.CharacterId.Equals(CharacterID) && x.OrdinalPosition.Equals(ordinalPosition))
                            .Select(x => new SkillID() { SkillId = x.SkillId })
                            .AsEnumerable()
                    /*from a in db.WheelPositionsSkills where a.CharacterId.Equals(CharacterID) && a.OrdinalPosition.Equals(ordinalPosition) select a.SkillId*/;
            }
            else
            {
                ListofSkillID =
                    db.WheelPositionsSkills
                        .Where(x => x.CharacterId.Equals(CharacterID))
                        .Select(x => new SkillID() { SkillId = x.SkillId })
                        .Distinct()
                        .AsEnumerable();
            }
            var query = from a in ListofSkillID
                        join skill in db.Skills on a.SkillId equals skill.SkillId
                        select new DescriptionName() { SkillName = skill.SkillName, SkillDescription = skill.SkillDescription };

            return query;
        }

    }
   
}
