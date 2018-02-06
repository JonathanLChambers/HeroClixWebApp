using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace HeroClixWebApp.Models
{
    public partial class COOLSTUFFContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            #warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
            optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=COOLSTUFF;Trusted_Connection=True;MultipleActiveResultSets=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BaseStat>(entity =>
            {
                entity.HasKey(e => e.StatId)
                    .HasName("PK__BaseStat__3A162D1E42971E9C");

                entity.Property(e => e.StatId).HasColumnName("StatID");

                entity.Property(e => e.StatName).HasColumnType("varchar(150)");
            });

            modelBuilder.Entity<CharacterTable>(entity =>
            {
                entity.HasKey(e => e.CharacterId)
                    .HasName("PK__Characte__757BCA40AC593715");

                entity.Property(e => e.CharacterId).HasColumnName("CharacterID");

                entity.Property(e => e.Indomitable).HasColumnType("varchar(150)");

                entity.Property(e => e.Name).HasColumnType("varchar(150)");
            });

            modelBuilder.Entity<Decks>(entity =>
            {
                entity.HasKey(e => e.DeckId)
                    .HasName("PK__Decks__76B5444C1EE756F3");

                entity.Property(e => e.DeckId)
                    .HasColumnName("DeckID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Deckname).HasColumnType("varchar(150)");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Decks)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK__Decks__UserID__33D4B598");
            });

            modelBuilder.Entity<Skills>(entity =>
            {
                entity.HasKey(e => e.SkillId)
                    .HasName("PK__Skills__DFA091E79A5F8B68");

                entity.Property(e => e.SkillId).HasColumnName("SkillID");

                entity.Property(e => e.SkillName).HasColumnType("varchar(150)");
            });

            modelBuilder.Entity<Team>(entity =>
            {
                entity.HasKey(e => e.DeckId)
                    .HasName("PK__Team__76B5444CD72E3F67");

                entity.Property(e => e.DeckId)
                    .HasColumnName("DeckID")
                    .ValueGeneratedNever();

                entity.Property(e => e.CharacterId).HasColumnName("CharacterID");

                entity.HasOne(d => d.Character)
                    .WithMany(p => p.Team)
                    .HasForeignKey(d => d.CharacterId)
                    .HasConstraintName("FK__Team__CharacterI__36B12243");

                entity.HasOne(d => d.Deck)
                    .WithOne(p => p.Team)
                    .HasForeignKey<Team>(d => d.DeckId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK__Team__DeckID__37A5467C");
            });

            modelBuilder.Entity<Users>(entity =>
            {
                entity.HasKey(e => e.UserId)
                    .HasName("PK__Users__1788CCACA78356DB");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.Property(e => e.Passwords).HasColumnType("varchar(150)");

                entity.Property(e => e.Usernames).HasColumnType("varchar(150)");
            });

            modelBuilder.Entity<WheelPositionsSkills>(entity =>
            {
                entity.HasKey(e => e.Pid)
                    .HasName("PK__WheelPos__C57755205C26BB68");

                entity.Property(e => e.Pid)
                    .HasColumnName("PID")
                    .ValueGeneratedOnAdd();

                entity.Property(e => e.CharacterId).HasColumnName("CharacterID");

                entity.Property(e => e.SkillId).HasColumnName("SkillID");

                entity.HasOne(d => d.Character)
                    .WithMany(p => p.WheelPositionsSkills)
                    .HasForeignKey(d => d.CharacterId)
                    .HasConstraintName("FK__WheelPosi__Chara__2D27B809");

                entity.HasOne(d => d.P)
                    .WithOne(p => p.WheelPositionsSkills)
                    .HasForeignKey<WheelPositionsSkills>(d => d.Pid)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK__WheelPositi__PID__2F10007B");

                entity.HasOne(d => d.Skill)
                    .WithMany(p => p.WheelPositionsSkills)
                    .HasForeignKey(d => d.SkillId)
                    .HasConstraintName("FK__WheelPosi__Skill__2E1BDC42");
            });

            modelBuilder.Entity<WheelPositionsStats>(entity =>
            {
                entity.HasKey(e => e.Pid)
                    .HasName("PK__WheelPos__C57755205317DB5A");

                entity.Property(e => e.Pid).HasColumnName("PID");

                entity.Property(e => e.CharacterId).HasColumnName("CharacterID");

                entity.Property(e => e.StatId).HasColumnName("StatID");

                entity.HasOne(d => d.Character)
                    .WithMany(p => p.WheelPositionsStats)
                    .HasForeignKey(d => d.CharacterId)
                    .HasConstraintName("FK__WheelPosi__Chara__29572725");

                entity.HasOne(d => d.Stat)
                    .WithMany(p => p.WheelPositionsStats)
                    .HasForeignKey(d => d.StatId)
                    .HasConstraintName("FK__WheelPosi__StatI__2A4B4B5E");
            });
        }

        public virtual DbSet<BaseStat> BaseStat { get; set; }
        public virtual DbSet<CharacterTable> CharacterTable { get; set; }
        public virtual DbSet<Decks> Decks { get; set; }
        public virtual DbSet<Skills> Skills { get; set; }
        public virtual DbSet<Team> Team { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<WheelPositionsSkills> WheelPositionsSkills { get; set; }
        public virtual DbSet<WheelPositionsStats> WheelPositionsStats { get; set; }
    }
}