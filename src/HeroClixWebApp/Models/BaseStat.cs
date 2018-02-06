using System;
using System.Collections.Generic;

namespace HeroClixWebApp.Models
{
    public partial class BaseStat
    {
        public BaseStat()
        {
            WheelPositionsStats = new HashSet<WheelPositionsStats>();
        }

        public int StatId { get; set; }
        public string StatName { get; set; }

        public virtual ICollection<WheelPositionsStats> WheelPositionsStats { get; set; }
    }
}
