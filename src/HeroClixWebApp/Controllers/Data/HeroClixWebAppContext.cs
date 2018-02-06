using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HeroClixWebApp.Models;
//using HeroClixWebApp.Models;
using Microsoft.EntityFrameworkCore;


namespace HeroClixWebApp.Data
{
    public class HeroClixWebAppContext : DbContext
    {


        public HeroClixWebAppContext(DbContextOptions<HeroClixWebAppContext> options) : base(options)
        {
        }

        

            //public DbSet<masterContext> Characters { get; set; }
            public DbSet<BaseStat> BaseStats { get; set; }
            public DbSet<CharacterTable> CharacterTalbe { get; set; }
            public DbSet<Decks> Decks { get; set; }
            public DbSet<Skills> Skills { get; set; }
            public DbSet<Users> Users { get; set; }
            public DbSet<WheelPositionsStats> WheelPositionStats { get; set; }

       /* protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer("");
        } */
    }   
}
