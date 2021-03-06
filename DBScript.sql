USE [master]
GO
/****** Object:  Database [chatroom]    Script Date: 12/02/2020 20:49:48 ******/
CREATE DATABASE [chatroom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'chatroom', FILENAME = N'D:\rdsdbdata\DATA\chatroom.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'chatroom_log', FILENAME = N'D:\rdsdbdata\DATA\chatroom_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [chatroom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [chatroom] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [chatroom] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [chatroom] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [chatroom] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [chatroom] SET ARITHABORT OFF 
GO
ALTER DATABASE [chatroom] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [chatroom] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [chatroom] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [chatroom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [chatroom] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [chatroom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [chatroom] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [chatroom] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [chatroom] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [chatroom] SET  ENABLE_BROKER 
GO
ALTER DATABASE [chatroom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [chatroom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [chatroom] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [chatroom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [chatroom] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [chatroom] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [chatroom] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [chatroom] SET RECOVERY FULL 
GO
ALTER DATABASE [chatroom] SET  MULTI_USER 
GO
ALTER DATABASE [chatroom] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [chatroom] SET DB_CHAINING OFF 
GO
ALTER DATABASE [chatroom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [chatroom] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [chatroom] SET DELAYED_DURABILITY = DISABLED 
GO
USE [chatroom]
GO
/****** Object:  User [admin]    Script Date: 12/02/2020 20:49:49 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/02/2020 20:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 12/02/2020 20:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[LikesNo] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Time] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.0000000'),
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/02/2020 20:49:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserFullName] [nvarchar](max) NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200211234524_initialize', N'2.1.3-rtm-32065')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200212012329_tim add', N'2.1.3-rtm-32065')
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostId], [Content], [LikesNo], [UserId], [Time]) VALUES (17, N'New Message', 0, 5, CAST(N'2020-02-12 23:46:38.0007032' AS DateTime2))
INSERT [dbo].[Post] ([PostId], [Content], [LikesNo], [UserId], [Time]) VALUES (19, N'3rd message', 0, 5, CAST(N'2020-02-12 23:55:57.5164816' AS DateTime2))
INSERT [dbo].[Post] ([PostId], [Content], [LikesNo], [UserId], [Time]) VALUES (23, N'Thanks Andrei!', 2, 5, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Post] ([PostId], [Content], [LikesNo], [UserId], [Time]) VALUES (24, N'Thank you, Andrei!', 1, 8, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Post] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserFullName], [Login], [Password]) VALUES (5, N'Andrei Laptev', N'alaptev', N'U2FsdGVkX18Fot6UKEm9bUWo6e6Alfevb0f0U3mSh+c=')
INSERT [dbo].[User] ([UserId], [UserFullName], [Login], [Password]) VALUES (8, N'Petr', N'petr', N'U2FsdGVkX19G1SkpQXsnoaXty0moEQJ5Obu66ScCI4E=')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Index [IX_Post_UserId]    Script Date: 12/02/2020 20:49:51 ******/
CREATE NONCLUSTERED INDEX [IX_Post_UserId] ON [dbo].[Post]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User_UserId]
GO
USE [master]
GO
ALTER DATABASE [chatroom] SET  READ_WRITE 
GO
