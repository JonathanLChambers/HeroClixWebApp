using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace HeroClixWebApp.Migrations
{
    public partial class ChangedSizeAndMovementToEnum : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "BaseStatsId",
                table: "Characters",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "WheelPositionsId",
                table: "Characters",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DateCreated",
                table: "BaseStats",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AlterColumn<byte>(
                name: "Size",
                table: "Characters",
                nullable: false);

            migrationBuilder.AlterColumn<byte>(
                name: "MovementSymbol",
                table: "Characters",
                nullable: false);

            migrationBuilder.CreateIndex(
                name: "IX_Characters_BaseStatsId",
                table: "Characters",
                column: "BaseStatsId");

            migrationBuilder.CreateIndex(
                name: "IX_Characters_WheelPositionsId",
                table: "Characters",
                column: "WheelPositionsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_BaseStats_BaseStatsId",
                table: "Characters",
                column: "BaseStatsId",
                principalTable: "BaseStats",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Characters_WheelPositions_WheelPositionsId",
                table: "Characters",
                column: "WheelPositionsId",
                principalTable: "WheelPositions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Characters_BaseStats_BaseStatsId",
                table: "Characters");

            migrationBuilder.DropForeignKey(
                name: "FK_Characters_WheelPositions_WheelPositionsId",
                table: "Characters");

            migrationBuilder.DropIndex(
                name: "IX_Characters_BaseStatsId",
                table: "Characters");

            migrationBuilder.DropIndex(
                name: "IX_Characters_WheelPositionsId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "BaseStatsId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "WheelPositionsId",
                table: "Characters");

            migrationBuilder.DropColumn(
                name: "DateCreated",
                table: "BaseStats");

            migrationBuilder.AlterColumn<string>(
                name: "Size",
                table: "Characters",
                nullable: true);

            migrationBuilder.AlterColumn<bool>(
                name: "MovementSymbol",
                table: "Characters",
                nullable: false);
        }
    }
}
