using System;
using System.Collections.Generic;
using Microsoft.CodeAnalysis.CSharp;

namespace HeroClixWebApp.Models

{


    public enum MovementEnum { Walker, Flyer, Swimmer }
    public enum SizeEnum { Tiny, Regular, Giant, Colossal }





    public partial class CharacterTable
    {






        public CharacterTable()
        {
            Team = new HashSet<Team>();
            WheelPositionsSkills = new HashSet<WheelPositionsSkills>();
            WheelPositionsStats = new HashSet<WheelPositionsStats>();
        }

        public int CharacterId { get; set; }
        public string Name { get; set; }
        public int? PointValue { get; set; }
        public MovementEnum Movement { get; set; }
        public SizeEnum Size { get; set; }



        public string Indomitable { get; set; }
        public int? Range { get; set; }
        public int? Targets { get; set; }

        public virtual ICollection<Team> Team { get; set; }
        public virtual ICollection<WheelPositionsSkills> WheelPositionsSkills { get; set; }
        public virtual ICollection<WheelPositionsStats> WheelPositionsStats { get; set; }


        



    }






}
