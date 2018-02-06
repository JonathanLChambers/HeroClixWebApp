using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using HeroClixWebApp.Data;

namespace HeroClixWebApp.Migrations
{
    [DbContext(typeof(HeroClixWebAppContext))]
    partial class HeroClixWebAppContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.0.0-rtm-21431")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("HeroClixWebApp.Models.BaseStats", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("CharacterId");

                    b.Property<int?>("CharactersId");

                    b.Property<DateTime>("DateCreated");

                    b.Property<string>("Name");

                    b.Property<int>("Value");

                    b.HasKey("Id");

                    b.HasIndex("CharactersId");

                    b.ToTable("BaseStats");
                });

            modelBuilder.Entity("HeroClixWebApp.Models.Characters", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("BaseStatsId");

                    b.Property<string>("Image");

                    b.Property<bool>("Indomitable");

                    b.Property<byte>("MovementSymbol");

                    b.Property<string>("Name");

                    b.Property<int>("Number");

                    b.Property<int>("PointValue");

                    b.Property<int>("RangeDistance");

                    b.Property<string>("RangeTargets");

                    b.Property<byte>("Size");

                    b.Property<int?>("WheelPositionsId");

                    b.HasKey("Id");

                    b.HasIndex("BaseStatsId");

                    b.HasIndex("WheelPositionsId");

                    b.ToTable("Characters");
                });

            modelBuilder.Entity("HeroClixWebApp.Models.WheelPositions", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("BaseStatId");

                    b.Property<int>("ChangeValue");

                    b.Property<int>("CharacterId");

                    b.Property<int?>("CharactersId");

                    b.Property<int>("OrdinalPosition");

                    b.HasKey("Id");

                    b.HasIndex("CharactersId");

                    b.ToTable("WheelPositions");
                });

            modelBuilder.Entity("HeroClixWebApp.Models.BaseStats", b =>
                {
                    b.HasOne("HeroClixWebApp.Models.Characters")
                        .WithMany("BaseStat")
                        .HasForeignKey("CharactersId");
                });

            modelBuilder.Entity("HeroClixWebApp.Models.Characters", b =>
                {
                    b.HasOne("HeroClixWebApp.Models.BaseStats", "BaseStats")
                        .WithMany()
                        .HasForeignKey("BaseStatsId");

                    b.HasOne("HeroClixWebApp.Models.WheelPositions", "WheelPositions")
                        .WithMany()
                        .HasForeignKey("WheelPositionsId");
                });

            modelBuilder.Entity("HeroClixWebApp.Models.WheelPositions", b =>
                {
                    b.HasOne("HeroClixWebApp.Models.Characters")
                        .WithMany("Wheel")
                        .HasForeignKey("CharactersId");
                });
        }
    }
}
