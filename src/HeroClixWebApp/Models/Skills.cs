using System;
using System.Collections.Generic;

namespace HeroClixWebApp.Models
{
    public partial class Skills
    {
        public Skills()
        {
            WheelPositionsSkills = new HashSet<WheelPositionsSkills>();
        }

        public int SkillId { get; set; }
        public string SkillName { get; set; }
        public string SkillDescription { get; set; }

        public virtual ICollection<WheelPositionsSkills> WheelPositionsSkills { get; set; }
    }
}
