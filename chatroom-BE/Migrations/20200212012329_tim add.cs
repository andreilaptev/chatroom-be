using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace chatroomBE.Migrations
{
    public partial class timadd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Post_User_userId",
                table: "Post");

            migrationBuilder.RenameColumn(
                name: "userFullName",
                table: "User",
                newName: "UserFullName");

            migrationBuilder.RenameColumn(
                name: "password",
                table: "User",
                newName: "Password");

            migrationBuilder.RenameColumn(
                name: "login",
                table: "User",
                newName: "Login");

            migrationBuilder.RenameColumn(
                name: "userId",
                table: "User",
                newName: "UserId");

            migrationBuilder.RenameColumn(
                name: "userId",
                table: "Post",
                newName: "UserId");

            migrationBuilder.RenameColumn(
                name: "likesNo",
                table: "Post",
                newName: "LikesNo");

            migrationBuilder.RenameColumn(
                name: "content",
                table: "Post",
                newName: "Content");

            migrationBuilder.RenameColumn(
                name: "postId",
                table: "Post",
                newName: "PostId");

            migrationBuilder.RenameIndex(
                name: "IX_Post_userId",
                table: "Post",
                newName: "IX_Post_UserId");

            migrationBuilder.AddColumn<DateTime>(
                name: "Time",
                table: "Post",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddForeignKey(
                name: "FK_Post_User_UserId",
                table: "Post",
                column: "UserId",
                principalTable: "User",
                principalColumn: "UserId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Post_User_UserId",
                table: "Post");

            migrationBuilder.DropColumn(
                name: "Time",
                table: "Post");

            migrationBuilder.RenameColumn(
                name: "UserFullName",
                table: "User",
                newName: "userFullName");

            migrationBuilder.RenameColumn(
                name: "Password",
                table: "User",
                newName: "password");

            migrationBuilder.RenameColumn(
                name: "Login",
                table: "User",
                newName: "login");

            migrationBuilder.RenameColumn(
                name: "UserId",
                table: "User",
                newName: "userId");

            migrationBuilder.RenameColumn(
                name: "UserId",
                table: "Post",
                newName: "userId");

            migrationBuilder.RenameColumn(
                name: "LikesNo",
                table: "Post",
                newName: "likesNo");

            migrationBuilder.RenameColumn(
                name: "Content",
                table: "Post",
                newName: "content");

            migrationBuilder.RenameColumn(
                name: "PostId",
                table: "Post",
                newName: "postId");

            migrationBuilder.RenameIndex(
                name: "IX_Post_UserId",
                table: "Post",
                newName: "IX_Post_userId");

            migrationBuilder.AddForeignKey(
                name: "FK_Post_User_userId",
                table: "Post",
                column: "userId",
                principalTable: "User",
                principalColumn: "userId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
