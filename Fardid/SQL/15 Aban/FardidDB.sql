USE [master]
GO
/****** Object:  Database [Fardid]    Script Date: 11/5/2020 2:41:26 AM ******/
CREATE DATABASE [Fardid]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fardid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Fardid.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Fardid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Fardid_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Fardid] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fardid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fardid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fardid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fardid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fardid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fardid] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fardid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Fardid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fardid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fardid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fardid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fardid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fardid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fardid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fardid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fardid] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Fardid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fardid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fardid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fardid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fardid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fardid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fardid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fardid] SET RECOVERY FULL 
GO
ALTER DATABASE [Fardid] SET  MULTI_USER 
GO
ALTER DATABASE [Fardid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fardid] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fardid] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fardid] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Fardid] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Fardid', N'ON'
GO
ALTER DATABASE [Fardid] SET QUERY_STORE = OFF
GO
USE [Fardid]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Fardid]
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 11/5/2020 2:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[Admin_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Family] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[PhoneNum] [nvarchar](50) NULL,
	[Password] [nvarchar](max) NULL,
	[ProfilePic_Id] [int] NULL,
 CONSTRAINT [PK_tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Message]    Script Date: 11/5/2020 2:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Message](
	[M_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Subject] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[Date] [datetime] NULL,
	[Message] [nvarchar](max) NULL,
	[Answered] [tinyint] NULL,
	[Seen] [tinyint] NULL,
	[AnswerMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Message] PRIMARY KEY CLUSTERED 
(
	[M_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Newsletter]    Script Date: 11/5/2020 2:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Newsletter](
	[Mail_Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[Date] [datetime] NULL,
	[IsActive] [tinyint] NULL,
 CONSTRAINT [PK_tbl_Newsletter] PRIMARY KEY CLUSTERED 
(
	[Mail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PicUploader]    Script Date: 11/5/2020 2:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PicUploader](
	[PicId] [int] IDENTITY(1,1) NOT NULL,
	[PicAddress] [nvarchar](max) NULL,
	[PicThumbnailAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_PicUploader] PRIMARY KEY CLUSTERED 
(
	[PicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PicUse]    Script Date: 11/5/2020 2:41:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PicUse](
	[PicId] [int] NULL,
	[PicUseAs] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Portfolio]    Script Date: 11/5/2020 2:41:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Portfolio](
	[P_Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[BackGroundPicId] [int] NULL,
	[LogoPicId] [int] NULL,
	[Discription] [nvarchar](max) NULL,
	[SEO_KeyWord] [nvarchar](100) NULL,
	[SEO_Discription] [nvarchar](max) NULL,
	[Show_MainPage] [tinyint] NULL,
	[Deleted] [tinyint] NULL,
 CONSTRAINT [PK_tbl_Portfolio] PRIMARY KEY CLUSTERED 
(
	[P_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SentEmails]    Script Date: 11/5/2020 2:41:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SentEmails](
	[Email_Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[Reciever] [nvarchar](200) NULL,
	[Date] [datetime] NULL,
	[Delivered] [tinyint] NULL,
 CONSTRAINT [PK_tbl_SentEmails] PRIMARY KEY CLUSTERED 
(
	[Email_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Services]    Script Date: 11/5/2020 2:41:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Services](
	[S_Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[Right_Subject] [nvarchar](100) NULL,
	[Left_PicId] [int] NULL,
	[Right_PicId] [int] NULL,
	[Background_PicId] [int] NULL,
	[Discription] [nvarchar](max) NULL,
	[VideoBackGround_PicId] [int] NULL,
	[Video_Link] [nvarchar](max) NULL,
	[VideoSub1] [nvarchar](100) NULL,
	[VideoSub2] [nvarchar](100) NULL,
	[SEO_KeyWord] [nvarchar](100) NULL,
	[SEO_Discription] [nvarchar](max) NULL,
	[Show_Menu] [tinyint] NULL,
	[Deleted] [tinyint] NULL,
 CONSTRAINT [PK_tbl_Services] PRIMARY KEY CLUSTERED 
(
	[S_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SiteProperties]    Script Date: 11/5/2020 2:41:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SiteProperties](
	[ItemKey] [nvarchar](100) NOT NULL,
	[ItemValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_SiteProperties] PRIMARY KEY CLUSTERED 
(
	[ItemKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TeamMembers]    Script Date: 11/5/2020 2:41:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TeamMembers](
	[T_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Subject] [nvarchar](200) NULL,
	[PicId] [int] NULL,
	[Deleted] [tinyint] NULL,
 CONSTRAINT [PK_tbl_TeamMembers] PRIMARY KEY CLUSTERED 
(
	[T_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Admin] ON 

INSERT [dbo].[tbl_Admin] ([Admin_Id], [Name], [Family], [EmailAddress], [PhoneNum], [Password], [ProfilePic_Id]) VALUES (1, N'نیکی', N'نیک آیین', N'niky@gmail.com', N'09199699545', N'5cbc31473a4b259e2c3b2e3f184763a4', 0)
SET IDENTITY_INSERT [dbo].[tbl_Admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_Message] ON 

INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (2, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:13.553' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (3, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:14.340' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (4, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:15.057' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (5, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:15.743' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (6, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:16.167' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (7, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:16.763' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
INSERT [dbo].[tbl_Message] ([M_Id], [Name], [Subject], [EmailAddress], [Date], [Message], [Answered], [Seen], [AnswerMessage]) VALUES (8, N'نیکی', N'تبلیغات', N'niky@gmail.com', CAST(N'2020-11-04T05:07:17.350' AS DateTime), N'برای ما تبلیغات انجام دهید لطفااا', 0, 0, N'')
SET IDENTITY_INSERT [dbo].[tbl_Message] OFF
SET IDENTITY_INSERT [dbo].[tbl_Newsletter] ON 

INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (1, N'niky@gmail.com', CAST(N'2020-11-04T22:43:03.990' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (2, N'niky@gmail.com', CAST(N'2020-11-04T22:43:04.670' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (3, N'niky@gmail.com', CAST(N'2020-11-04T22:43:05.387' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (4, N'niky@gmail.com', CAST(N'2020-11-04T22:43:05.967' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (5, N'niky@gmail.com', CAST(N'2020-11-04T22:43:06.490' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (6, N'niky@gmail.com', CAST(N'2020-11-04T22:43:06.937' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (7, N'niky@gmail.com', CAST(N'2020-11-04T22:43:07.343' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (8, N'niky@gmail.com', CAST(N'2020-11-04T22:43:07.633' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (9, N'niky@gmail.com', CAST(N'2020-11-04T22:43:07.913' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (10, N'niky@gmail.com', CAST(N'2020-11-04T22:43:08.363' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (11, N'niky@gmail.com', CAST(N'2020-11-04T22:43:08.873' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (12, N'niky@gmail.com', CAST(N'2020-11-04T22:43:09.297' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (13, N'niky@gmail.com', CAST(N'2020-11-04T22:43:09.727' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (14, N'niky@gmail.com', CAST(N'2020-11-04T22:43:10.213' AS DateTime), 1)
INSERT [dbo].[tbl_Newsletter] ([Mail_Id], [EmailAddress], [Date], [IsActive]) VALUES (15, N'niky@gmail.com', CAST(N'2020-11-04T22:43:10.683' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tbl_Newsletter] OFF
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'MainVideoBackground')
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'MainLogo')
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'FooterLogo')
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'FooterLogo')
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'MenuLogo')
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'VideoLogo')
INSERT [dbo].[tbl_PicUse] ([PicId], [PicUseAs]) VALUES (0, N'FoIcon')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'AboutUs', N'

ما دو سه نفر بودیم و نقطه اشتراکمون از بچگی، تنفرمون از تبلیغات بازرگانی بود! ما از این تنفر، یه هدف ساختیم و یه تیم تبلیغاتی راه انداختیم!

تو این راه هم از کسایی که شبیه خودمون بودن استفاده کردیم و تیممون بزرگ و بزرگ‌تر شد تا رسید به یه فکر به اسمِ فردیده.

«فردید» یه بچه‌ی پرانرژی و فعاله که یه جا بند نمی‌شه؛ از چیزای تکراری خوشش نمی‌آد و عاشق سرگرمی‌های جدیده؛ صداش بلنده و همیشه به‌جای قدم زدن، مسیرش و می‌دوئه و از این دویدن لذت می‌بره.

حالا ما که دیگه فقط دو سه نفر نیستیم، تو خونواده‌ی بزرگمون هر ثانیه در حال فکر کردن، طراحی، کارگردانی، ویدئو و موشن‌گرافی، تدوین، عکاسی و پیدا کردن بهترین ارتباط و نفوذ به ذهن دنیاییم.

درِ این خونه هم همیشه به روی بهترین‌ها بازه.

محتوا سازی و تبلیغ وسیع و هوشمند تو «دیجیتال مارکتینگ» برای ما فقط یه «کار» شبانه‌روز و «عشق» نیست، یه ابر پروژه‌ی مادام‌العمره که باید هر ثانیه بهتره از ثانیه‌ی قبل بشه.

ازنظر «فردید»، هیچ کسب‌وکار، شغل و حرفه‌ای ناموفق نیست، فقط هنوز باهامون آشنا نشده!
')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Eng_Address', N'N 6, Sharifi Alley, Sanjabi Ave, Madar Sq, Mirdamad BlvdTehran, Iran')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Facebook', N'@me')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Instagram', N'@me')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Linkedin', N'@me')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'MainVideoLink', N'   ')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'MainVideoSub1', N'   ')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'MainVideoSub2', N'       ')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Per_Address', N' تهران، میرداماد، میدان مادر، خیابان شهید سنجابی (بهروز سابق)
کوچه شریفی، پلاک 6، افق ارتباطات فردید')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Site_Email', N'Fardidmedia@gmail.com')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Site_Phone', N'02122225896')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Site_SEO_Discription', N'       ')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Site_SEO_Keyword', N'     ')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'SiteDiscription', N'سلاام')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'SiteName', N'فردید')
INSERT [dbo].[tbl_SiteProperties] ([ItemKey], [ItemValue]) VALUES (N'Twitter', N'@me')
USE [master]
GO
ALTER DATABASE [Fardid] SET  READ_WRITE 
GO
