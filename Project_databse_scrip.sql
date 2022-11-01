USE [master]
GO
/****** Object:  Database [sqlproject]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE DATABASE [sqlproject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sqlproject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MOUSSA\MSSQL\DATA\sqlproject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [Secondary ] 
( NAME = N'DemoDatabase_tblRecords', FILENAME = N'E:\DemoDatabase_tblRecords.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'sqlproject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MOUSSA\MSSQL\DATA\sqlproject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [sqlproject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sqlproject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sqlproject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sqlproject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sqlproject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sqlproject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sqlproject] SET ARITHABORT OFF 
GO
ALTER DATABASE [sqlproject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sqlproject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sqlproject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sqlproject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sqlproject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sqlproject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sqlproject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sqlproject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sqlproject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sqlproject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sqlproject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sqlproject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sqlproject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sqlproject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sqlproject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sqlproject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sqlproject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sqlproject] SET RECOVERY FULL 
GO
ALTER DATABASE [sqlproject] SET  MULTI_USER 
GO
ALTER DATABASE [sqlproject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sqlproject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sqlproject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sqlproject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sqlproject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sqlproject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'sqlproject', N'ON'
GO
ALTER DATABASE [sqlproject] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Student]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [Student] WITH PASSWORD=N'Z3CCvSN5DClo1YilDbXpdrDMMVGfrpYgxKvYk6reI/I=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Student] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$MOUSSA]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$MOUSSA] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLAgent$MOUSSA]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT SERVICE\SQLAgent$MOUSSA] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$MOUSSA]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT Service\MSSQL$MOUSSA] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [new22]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [new22] WITH PASSWORD=N'6xSoq+RvSjndTbeLyNtMynFnPW0FUWpCeMfY4Zkge/4=', DEFAULT_DATABASE=[sqlproject], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [new22] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Manager1]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [Manager1] WITH PASSWORD=N'chI9i2hlIZL8cCdoDgEiu4UIalgjIt2ElQIrmBQk+Gw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Manager1] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Manager]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [Manager] WITH PASSWORD=N'Fa7ZL7Ee8TLReLKuUQofloY+m85l9Qi0gMQS61TGmA4=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [Manager] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Instructor]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [Instructor] WITH PASSWORD=N'gfRLJHwd3rM647ehi1Uh4BHWzDAWbvsgKS0M97ro9U8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Instructor] DISABLE
GO
/****** Object:  Login [DESKTOP-KC6KE70\Moussa]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [DESKTOP-KC6KE70\Moussa] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'GsFkXhNfXKgHuNldtOnW/469EZiNXOd9wmpOxWA1h/A=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 9/17/2022 9:19:29 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'z+R8uVthHOpliqAQ8tC4HEm+9BUjcSdFwx4mJ/dKvsI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[sqlproject] TO [DESKTOP-KC6KE70\Moussa]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLAgent$MOUSSA]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$MOUSSA]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-KC6KE70\Moussa]
GO
USE [sqlproject]
GO
/****** Object:  User [Student]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE USER [Student] FOR LOGIN [Student] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [new22]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE USER [new22] FOR LOGIN [new22] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Manager]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE USER [Manager] FOR LOGIN [Manager] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE USER [Instructor] FOR LOGIN [Instructor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  FullTextCatalog [FullTextCatalog]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE FULLTEXT CATALOG [FullTextCatalog] WITH ACCENT_SENSITIVITY = ON
AUTHORIZATION [dbo]
GO
/****** Object:  UserDefinedTableType [dbo].[TestProcType]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE TYPE [dbo].[TestProcType] AS TABLE(
	[qid] [int] NULL
)
GO
ALTER AUTHORIZATION ON TYPE::[dbo].[TestProcType] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[GetStudent_exam_degree_byID]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetStudent_exam_degree_byID](@id int)
returns nvarchar(max)
begin
		declare @result nvarchar(50)

		set @result=(select [Exams result  fail/pass] from Student_course_results
		where student_id = @id)


		if(@result is null )
		   begin
				return  'no Student Found'
			end
	
			return @result

end
GO
ALTER AUTHORIZATION ON [dbo].[GetStudent_exam_degree_byID] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[student_fn] [nvarchar](50) NULL,
	[student_ln] [nvarchar](50) NULL,
	[adress] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[branch_id] [int] NULL,
	[intake_id] [int] NULL,
	[track_id] [int] NULL,
	[exam_id] [int] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [Student_pk] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Student] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[StudentAnswer]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnswer](
	[studentAnswer_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[exam_id] [int] NULL,
	[course_id] [int] NULL,
	[result] [int] NULL,
	[resultC] [int] NULL,
	[resultTF] [int] NULL,
	[resultText] [int] NULL,
	[exam_degree] [int] NULL,
 CONSTRAINT [StudentAnswer_pk] PRIMARY KEY CLUSTERED 
(
	[studentAnswer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[StudentAnswer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [nvarchar](50) NULL,
	[min_deg] [int] NULL,
	[max_deg] [int] NULL,
	[instructor_id] [int] NULL,
 CONSTRAINT [Course_pk] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Course] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[Student_results1]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Student_results1]
as
select CONCAT( S.student_fn,' ',student_ln )as 'full name',C.course_name,SA.result as 'your exam degree',SA.exam_degree,case 
when SA.result >=SA.exam_degree/2 then 'pass'
when SA.result <SA.exam_degree/2 then 'faill'
else 'not found'
end as 'Exams result  fail/pass' ,C.min_deg as 'course mix degree',C.max_deg 'course max degree',
case 
when SA.result >=C.min_deg then 'pass'
when SA.result <C.min_deg then 'faill'
else 'not found'
end as 'course result  fail/pass'
from Student S join StudentAnswer SA 
on S.student_id=SA.student_id
join Course C
on S.course_id=C.course_id
GO
ALTER AUTHORIZATION ON [dbo].[Student_results1] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[Student_exams_results1]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Student_exams_results1]
as
select CONCAT( S.student_fn,' ',student_ln )as 'full name',SA.result,SA.exam_degree ,case 
when SA.result >=SA.exam_degree/2 then 'pass'
when SA.result <SA.exam_degree/2 then 'faill'
else 'not found'
end as 'Exams result  fail/pass'
from Student S join StudentAnswer SA 
on S.student_id=SA.student_id
GO
ALTER AUTHORIZATION ON [dbo].[Student_exams_results1] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[instructor_id] [int] IDENTITY(1,1) NOT NULL,
	[instructor_f_n] [nvarchar](50) NULL,
	[instructor_l_n] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[adress] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[manager_ID] [int] NULL,
 CONSTRAINT [Instructor_pk] PRIMARY KEY CLUSTERED 
(
	[instructor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Instructor] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[Student_course_results]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Student_course_results]
as
select S.student_id, CONCAT( S.student_fn,' ',student_ln )as 'full name',C.course_name,CONCAT(I.instructor_f_n,' ',I.instructor_l_n) as 'instructor name ',SA.result as 'your exam degree',SA.exam_degree,case 
when SA.result >=SA.exam_degree/2 then 'pass'
when SA.result <SA.exam_degree/2 then 'faill'
else 'not found'
end as 'Exams result  fail/pass' ,C.min_deg as 'course mix degree',C.max_deg 'course max degree',
case 
when SA.result >=C.min_deg then 'pass'
when SA.result <C.min_deg then 'faill'
else 'not found'
end as 'course result  fail/pass'
from Student S join StudentAnswer SA 
on S.student_id=SA.student_id
join Course C
on S.course_id=C.course_id
join Instructor I
on C.instructor_id=I.instructor_id
GO
ALTER AUTHORIZATION ON [dbo].[Student_course_results] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AllowanceOption]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllowanceOption](
	[allowanceOption_id] [int] NOT NULL,
	[allowanceOption_name] [nvarchar](50) NULL,
	[option1] [bit] NULL,
	[option2] [bit] NULL,
 CONSTRAINT [AllowanceOption_pk] PRIMARY KEY CLUSTERED 
(
	[allowanceOption_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AllowanceOption] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AnswerC]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerC](
	[question_id] [int] NULL,
	[answerChoice] [nvarchar](50) NULL,
	[degree] [int] NULL,
	[studentAnswer_id] [int] NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AnswerC] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AnswerText]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerText](
	[question_id] [int] NULL,
	[answerText] [text] NULL,
	[degree] [int] NULL,
	[studentAnswer_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AnswerText] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AnswerTF]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerTF](
	[question_id] [int] NULL,
	[answerTF] [bit] NULL,
	[degree] [int] NULL,
	[studentAnswer_id] [int] NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AnswerTF] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[branch_id] [int] NOT NULL,
	[branch_name] [nvarchar](50) NULL,
 CONSTRAINT [Branch_pk] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Branch] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Eqc]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eqc](
	[qid] [int] NOT NULL,
	[ints_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [Eqc_pk] PRIMARY KEY CLUSTERED 
(
	[qid] ASC,
	[ints_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Eqc] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Eqc1]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eqc1](
	[qid] [int] NOT NULL,
	[ints_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [Eqc1_pk] PRIMARY KEY CLUSTERED 
(
	[qid] ASC,
	[ints_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Eqc1] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Eqc2]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eqc2](
	[qid] [int] NOT NULL,
	[ints_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [Eqc2_pk] PRIMARY KEY CLUSTERED 
(
	[qid] ASC,
	[ints_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Eqc2] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_type] [nvarchar](50) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[totalTime] [time](7) NULL,
	[allowance_option] [nvarchar](50) NULL,
	[course_id] [int] NULL,
	[instructor_id] [int] NULL,
	[branch_id] [int] NULL,
	[intake_id] [int] NULL,
	[track_id] [int] NULL,
	[allowanceOption_id] [int] NULL,
 CONSTRAINT [Exam_pk] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Exam] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ExamQuestionsChoice]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestionsChoice](
	[id] [int] NULL,
	[question_id] [int] NULL,
	[question_des] [text] NULL,
	[option1] [nvarchar](50) NULL,
	[option2] [nvarchar](50) NULL,
	[option3] [nvarchar](50) NULL,
	[option4] [nvarchar](50) NULL,
	[answerChoice] [nvarchar](50) NULL,
	[degree] [int] NULL,
	[exam_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ExamQuestionsChoice] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ExamQuestionsText]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestionsText](
	[id] [int] NULL,
	[question_id] [int] NOT NULL,
	[question_des] [text] NULL,
	[answerText] [text] NULL,
	[degree] [int] NULL,
	[exam_id] [int] NOT NULL,
 CONSTRAINT [ExamQuestionsT_pk] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC,
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ExamQuestionsText] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ExamQuestionsTF]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestionsTF](
	[id] [int] NULL,
	[question_id] [int] NOT NULL,
	[question_des] [text] NULL,
	[optionT] [bit] NULL,
	[optionF] [bit] NULL,
	[answerTF] [bit] NULL,
	[degree] [int] NULL,
	[exam_id] [int] NOT NULL,
 CONSTRAINT [ExamQuestionsTF_pkT] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC,
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ExamQuestionsTF] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ExamsLip]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamsLip](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [varchar](50) NULL,
	[instructor_name] [varchar](102) NULL,
	[exams_year] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ExamsLip] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Intake]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intake](
	[intake_id] [int] NOT NULL,
	[intake_number] [int] NULL,
 CONSTRAINT [intake_pk] PRIMARY KEY CLUSTERED 
(
	[intake_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Intake] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[QuestionstChoice]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionstChoice](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question_des] [text] NULL,
	[option1] [nvarchar](50) NULL,
	[option2] [nvarchar](50) NULL,
	[option3] [nvarchar](50) NULL,
	[option4] [nvarchar](50) NULL,
	[answer] [nvarchar](50) NULL,
	[course_id] [int] NULL,
 CONSTRAINT [QuestionstChoice_pk] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[QuestionstChoice] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[QuestionstText]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionstText](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question_des] [text] NULL,
	[answer] [text] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [QuestionstText_pk] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[QuestionstText] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[QuestionstTF]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionstTF](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[question_des] [text] NULL,
	[option1] [bit] NULL,
	[option2] [bit] NULL,
	[answer] [bit] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [QuestionstTF_pk] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[QuestionstTF] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Track]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[track_id] [int] NOT NULL,
	[track_name] [nvarchar](50) NULL,
 CONSTRAINT [track_pk] PRIMARY KEY CLUSTERED 
(
	[track_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Track] TO  SCHEMA OWNER 
GO
/****** Object:  Index [index_examTextQuestions]    Script Date: 9/17/2022 9:19:30 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [index_examTextQuestions] ON [dbo].[ExamQuestionsText]
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  FullTextIndex     Script Date: 9/17/2022 9:19:30 PM ******/
CREATE FULLTEXT INDEX ON [dbo].[ExamQuestionsText](
[answerText] LANGUAGE 'English')
KEY INDEX [index_examTextQuestions]ON ([FullTextCatalog], FILEGROUP [PRIMARY])
WITH (CHANGE_TRACKING = AUTO, STOPLIST = SYSTEM)

GO
ALTER TABLE [dbo].[AnswerC]  WITH CHECK ADD  CONSTRAINT [AnswerC_stuAns_fk] FOREIGN KEY([studentAnswer_id])
REFERENCES [dbo].[StudentAnswer] ([studentAnswer_id])
GO
ALTER TABLE [dbo].[AnswerC] CHECK CONSTRAINT [AnswerC_stuAns_fk]
GO
ALTER TABLE [dbo].[AnswerText]  WITH CHECK ADD  CONSTRAINT [AnswerT_stuAns_fk] FOREIGN KEY([studentAnswer_id])
REFERENCES [dbo].[StudentAnswer] ([studentAnswer_id])
GO
ALTER TABLE [dbo].[AnswerText] CHECK CONSTRAINT [AnswerT_stuAns_fk]
GO
ALTER TABLE [dbo].[AnswerTF]  WITH CHECK ADD  CONSTRAINT [AnswerTF_stuAns_fk] FOREIGN KEY([studentAnswer_id])
REFERENCES [dbo].[StudentAnswer] ([studentAnswer_id])
GO
ALTER TABLE [dbo].[AnswerTF] CHECK CONSTRAINT [AnswerTF_stuAns_fk]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [Course_instructor_fk] FOREIGN KEY([instructor_id])
REFERENCES [dbo].[Instructor] ([instructor_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [Course_instructor_fk]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [Exam_allowanceOption_fk] FOREIGN KEY([allowanceOption_id])
REFERENCES [dbo].[AllowanceOption] ([allowanceOption_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [Exam_allowanceOption_fk]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [Exam_branch_fk] FOREIGN KEY([branch_id])
REFERENCES [dbo].[Branch] ([branch_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [Exam_branch_fk]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [Exam_Course_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [Exam_Course_fk]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [Exam_Instructor_fk] FOREIGN KEY([instructor_id])
REFERENCES [dbo].[Instructor] ([instructor_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [Exam_Instructor_fk]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [Exam_Intake_fk] FOREIGN KEY([intake_id])
REFERENCES [dbo].[Intake] ([intake_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [Exam_Intake_fk]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [Exam_Track_fk] FOREIGN KEY([track_id])
REFERENCES [dbo].[Track] ([track_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [Exam_Track_fk]
GO
ALTER TABLE [dbo].[ExamQuestionsChoice]  WITH CHECK ADD  CONSTRAINT [ExamQuestionsC_Exam_fk] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[ExamQuestionsChoice] CHECK CONSTRAINT [ExamQuestionsC_Exam_fk]
GO
ALTER TABLE [dbo].[ExamQuestionsText]  WITH CHECK ADD  CONSTRAINT [ExamQuestionsT_Exam_fk] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[ExamQuestionsText] CHECK CONSTRAINT [ExamQuestionsT_Exam_fk]
GO
ALTER TABLE [dbo].[ExamQuestionsTF]  WITH CHECK ADD  CONSTRAINT [ExamQuestionsTF_Exam_fk] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[ExamQuestionsTF] CHECK CONSTRAINT [ExamQuestionsTF_Exam_fk]
GO
ALTER TABLE [dbo].[QuestionstChoice]  WITH CHECK ADD  CONSTRAINT [QuestionstChoice_Course_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[QuestionstChoice] CHECK CONSTRAINT [QuestionstChoice_Course_fk]
GO
ALTER TABLE [dbo].[QuestionstText]  WITH CHECK ADD  CONSTRAINT [QuestionstText_Course_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[QuestionstText] CHECK CONSTRAINT [QuestionstText_Course_fk]
GO
ALTER TABLE [dbo].[QuestionstTF]  WITH CHECK ADD  CONSTRAINT [QuestionstTF_Course_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[QuestionstTF] CHECK CONSTRAINT [QuestionstTF_Course_fk]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_branch_fk] FOREIGN KEY([branch_id])
REFERENCES [dbo].[Branch] ([branch_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_branch_fk]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_Course_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_Course_fk]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_Exam_fk] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_Exam_fk]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_Intake_fk] FOREIGN KEY([intake_id])
REFERENCES [dbo].[Intake] ([intake_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_Intake_fk]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_Track_fk] FOREIGN KEY([track_id])
REFERENCES [dbo].[Track] ([track_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_Track_fk]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [StudentAnswer_course_fk] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [StudentAnswer_course_fk]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [StudentAnswer_exam_fk] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [StudentAnswer_exam_fk]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [StudentAnswer_student_fk] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [StudentAnswer_student_fk]
GO
/****** Object:  StoredProcedure [dbo].[add__questionChoice_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add__questionChoice_by_instructor](@question_des text,@option1 nvarchar(50),@option2 nvarchar(50),@option3 nvarchar(50),@option4 nvarchar(50),@answer nvarchar(50),@course_id int,@instructor_id int)
as
begin
if(@instructor_id=@course_id)
begin
insert into QuestionstChoice (question_des,option1,option2,option3,option4,answer,course_id)
select  
@question_des,@option1,@option2,@option3,@option4,@answer,@course_id
 end
end
GO
ALTER AUTHORIZATION ON [dbo].[add__questionChoice_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[add__questionText_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add__questionText_by_instructor](@question_des text,@answer nvarchar(50),@course_id int,@instructor_id int)
as
begin
if(@instructor_id=@course_id)
begin
insert into QuestionstText(question_des,answer,course_id)
select  
@question_des,@answer,@course_id
end

 
end
GO
ALTER AUTHORIZATION ON [dbo].[add__questionText_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[add__questionTF_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add__questionTF_by_instructor](@question_des text,@option1 bit,@option2 bit,@answer nvarchar(50),@course_id int,@instructor_id int)
as
begin
if(@instructor_id=@course_id)
begin
insert into QuestionstTF(question_des,option1,option2,answer,course_id)
select  
@question_des,@option1,@option2,@answer,@course_id
 end
end
GO
ALTER AUTHORIZATION ON [dbo].[add__questionTF_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Anser_chosse]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Anser_chosse] @Student_id int , @ques_id int, @ans nvarchar(50)
as 
begin
--but anser
update AnswerC  set answerChoice=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
--check answer
update  AnswerC  
set 
degree=E.degree
from AnswerC A join ExamQuestionsChoice E
on A.question_id=E.id and
 A.answerChoice=E.AnswerChoice and E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)


 update  AnswerC  
set 
degree=0
from AnswerC A join ExamQuestionsChoice E
on A.question_id=E.id and
 A.answerChoice!=E.AnswerChoice and E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
end
GO
ALTER AUTHORIZATION ON [dbo].[Anser_chosse] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Anser_Tet]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Anser_Tet] @student_id int, @ques_id int, @ans Text
as 
begin
--but anser
update AnswerText set answerText=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
--check answer
update  AnswerText  
set 
degree=E.degree
from AnswerText A join ExamQuestionsText E
on A.question_id=E.id and
 A.AnswerText like E.answerText and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id) 
 update  AnswerText  
set 
degree=0
from AnswerText A join ExamQuestionsText E
on A.question_id=E.id and
 A.AnswerText not like E.answerText and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
end
GO
ALTER AUTHORIZATION ON [dbo].[Anser_Tet] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Anser_Tet2]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[Anser_Tet2] @student_id int, @ques_id int, @ans Text
as 
begin
declare @var nvarchar(200);
set @var=cast(@ans as nvarchar(200))
--but anser
update AnswerText set answerText=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 

 begin try 
update AnswerText set degree=
(select E.degree
from AnswerText A join ExamQuestionsText E
on A.question_id=E.id and
 freetext(E.answerText,@var) 
 and 
 E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id) 
)
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
print'done'

end try
begin catch
update AnswerText set degree=0
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
print'erorr'
end catch

end
GO
ALTER AUTHORIZATION ON [dbo].[Anser_Tet2] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Anser_True_false]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Anser_True_false] @student_id int , @ques_id int, @ans bit
as 
begin
--but anser
update AnswerTF set answerTF=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
--check answer
update  AnswerTF  
set 
degree=E.degree
from AnswerTF A join ExamQuestionsTF E
on A.question_id=E.id and
 A.answerTF=E.answerTF and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
 update  AnswerTF  
set 
degree=0
from AnswerTF A join ExamQuestionsTF E
on A.question_id=E.id and
 A.answerTF!=E.answerTF and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
end
GO
ALTER AUTHORIZATION ON [dbo].[Anser_True_false] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[create__exam_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[create__exam_by_instructor] (@instructor_id int ,@course_id int,@allowanceOption_id int,@tfQuestion int,
@tfdeg int,@cQestion int ,@cdeg int,@tQuestion int ,@tdeg int)
 as 
 begin

 declare @exam_id int,@examdeg int,@coursemaxdeg int;


 --num question less than in thw question pool 
 set @examdeg=@tfQuestion * @tfdeg +@cQestion*@cdeg +@tQuestion * @tdeg 

 set @coursemaxdeg=(select max_deg from Course where course_id=@course_id)
 if(@examdeg <= @coursemaxdeg)
 begin

   insert into Exam(instructor_id,course_id,branch_id,intake_id,track_id,allowanceOption_id)
   values(@instructor_id,@course_id,1,1,1,@allowanceOption_id)
   set @exam_id=(select top 1 E.exam_id from Exam E order by exam_id desc);
 
 --insert choose questions

   insert into ExamQuestionsChoice(id,question_id,question_des,option1,option2,option3,option4,degree,answerChoice ,exam_id)
	select  top (@cQestion)0,Q.question_id, Q.question_des ,Q.option1,Q.option2,
	Q.option3,Q.option4,@cdeg,Q.answer,@exam_id from QuestionstChoice Q
	where Q.course_id=@course_id 
	ORDER BY NEWID()
	  DECLARE @id INT 
    SET @id = 0 
    UPDATE ExamQuestionsChoice 
    SET @id = id = @id + 1 where exam_id=@exam_id
 --insert choose true or false questions
     insert into ExamQuestionsTF(id,question_id,question_des,optionT,optionF,degree,answerTF ,exam_id)
	select  top (@tfQuestion)0,Q.question_id, Q.question_des ,Q.option1,Q.option2,
	@tfdeg,Q.answer,@exam_id from QuestionstTF Q
	where Q.course_id=@course_id 
	ORDER BY NEWID()
    SET @id = 0 
    UPDATE ExamQuestionsTF 
    SET @id = id = @id + 1 where exam_id=@exam_id
	 --insert text questions 
     insert into ExamQuestionsText(id,question_id,question_des,degree,answerText ,exam_id)
	 select  top (@tQuestion)0,Q.question_id, Q.question_des ,@tdeg,Q.answer,@exam_id from QuestionstText Q
	where Q.course_id=@course_id 
	ORDER BY NEWID()
	 SET @id = 0 
    UPDATE ExamQuestionsText 
    SET @id = id = @id + 1 where exam_id=@exam_id
	end
	else 
	begin
	print 'the exam degree  more than than course maximum degree'
	end


 end
GO
ALTER AUTHORIZATION ON [dbo].[create__exam_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[delete__questionChoice_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[delete__questionChoice_by_instructor](@question_id int,@instructor_id int)
as
begin

delete  Q 

from QuestionstChoice Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 

end
GO
ALTER AUTHORIZATION ON [dbo].[delete__questionChoice_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[delete__questionText_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete__questionText_by_instructor](@question_id int,@instructor_id  INT)
as
begin
delete  QuestionstText
from QuestionstText Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
end
GO
ALTER AUTHORIZATION ON [dbo].[delete__questionText_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[delete__questionTF_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[delete__questionTF_by_instructor](@question_id int,@instructor_id  INT)
as
begin
delete  QuestionstTF
from QuestionstTF Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
end
GO
ALTER AUTHORIZATION ON [dbo].[delete__questionTF_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[edit__questionChoice_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[edit__questionChoice_by_instructor](@question_id int,@question_des text,@option1 nvarchar(50),@option2 nvarchar(50),@option3 nvarchar(50),@option4 nvarchar(50),@answer nvarchar(50),@instructor_id int)
as
begin

update QuestionstChoice 


set question_des=@question_des,option1=@option1 ,option2=@option2,option3=@option3,option4=@option4,answer=@answer
from QuestionstChoice Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 
  

 
end
GO
ALTER AUTHORIZATION ON [dbo].[edit__questionChoice_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[edit__questionText_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[edit__questionText_by_instructor](@question_id int,@question_des text,@answer nvarchar(50),@instructor_id int)
as
begin
update QuestionstText 
set question_des=@question_des,answer=@answer
from QuestionstText Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 
end
GO
ALTER AUTHORIZATION ON [dbo].[edit__questionText_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[edit__questionTF_by_instructor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[edit__questionTF_by_instructor](@question_id int,@question_des text,@option1 bit,@option2 bit,@answer nvarchar(50),@instructor_id int)
as
begin
update QuestionstTF
set question_des=@question_des,answer=@answer,option1=@option1,option2=@option2
from QuestionstTF Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 
end
GO
ALTER AUTHORIZATION ON [dbo].[edit__questionTF_by_instructor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[insert_into_chosse_questions]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_into_chosse_questions] @instructor_id int,@course_id int,@qId int
 as 
 begin
 declare @instrctor_course_id int
 declare @quetion_course_id int
  set @instrctor_course_id=(select C.course_id from Course C join Instructor I
  on C.instructor_id=I.instructor_id and C.course_id=@course_id 
  and I.instructor_id=@instructor_id)


 set @quetion_course_id=(select Q.course_id from QuestionstChoice Q where Q.question_id=@qId)
	
	if(@instrctor_course_id=@quetion_course_id)
		begin
			
		   BEGIN TRY  
              insert into Eqc(ints_id,course_id,qid) values(@instructor_id,@course_id,@qId)           END TRY  
           BEGIN CATCH  
		          print ' some thing went wrong you have insert that quetion berfore'
           END CATCH 
		end
	else
		begin
			print'that quetion dose not belong to your course'
		end
 end
GO
ALTER AUTHORIZATION ON [dbo].[insert_into_chosse_questions] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[insert_into_Text_questions]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_into_Text_questions] @instructor_id int,@course_id int,@qId int
 as 
 begin
 declare @instrctor_course_id int
 declare @quetion_course_id int
  set @instrctor_course_id=(select C.course_id from Course C join Instructor I
  on C.instructor_id=I.instructor_id and C.course_id=@course_id 
  and I.instructor_id=@instructor_id)

 set @quetion_course_id=(select Q.course_id from QuestionstText Q where Q.question_id=@qId)
	
	if(@instrctor_course_id=@quetion_course_id)
		begin
			
		   BEGIN TRY  
              insert into Eqc2(ints_id,course_id,qid) values(@instructor_id,@course_id,@qId)           END TRY  
           BEGIN CATCH  
		          print ' some thing went wrong you have insert that quetion berfore'
           END CATCH 
		end
	else
		begin
			print'that quetion dose not belong to your course'
		end
 end
GO
ALTER AUTHORIZATION ON [dbo].[insert_into_Text_questions] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[insert_into_Tf_questions]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_into_Tf_questions] @instructor_id int,@course_id int,@qId int
 as 
 begin
 declare @instrctor_course_id int
 declare @quetion_course_id int
  set @instrctor_course_id=(select C.course_id from Course C join Instructor I
  on C.instructor_id=I.instructor_id and C.course_id=@course_id 
  and I.instructor_id=@instructor_id)


 set @quetion_course_id=(select Q.course_id from QuestionstTF Q where Q.question_id=@qId)
	
	if(@instrctor_course_id=@quetion_course_id)
		begin
			
		   BEGIN TRY  
              insert into Eqc1(ints_id,course_id,qid) values(@instructor_id,@course_id,@qId)           END TRY  
           BEGIN CATCH  
		          print ' some thing went wrong or  you have insert that quetion before'
           END CATCH 
		end
	else
		begin
			print'that quetion dose not belong to your course'
		end
 end
GO
ALTER AUTHORIZATION ON [dbo].[insert_into_Tf_questions] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[instructor_add_Exam_to_student]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[instructor_add_Exam_to_student] (@studentID int ,@examID int,@startTime datetime,@endTime datetime )
as
begin
declare @exam_course_id int
 set @exam_course_id=(select E.course_id from Exam E where E.exam_id=@examID) 
 declare @tsudent_course_id int
 set @tsudent_course_id=(select S.course_id from Student S where S.student_id=@studentID) 

 if(@exam_course_id=@tsudent_course_id)
    begin
      update Student set exam_id=@examID
      where student_id=@studentID

	  update Exam set startTime=@startTime , endTime =@endTime
	  where exam_id=@examID;
	end
  else 
	begin
	print 'Sorry !!!that student cant perform that exam '
	end 
end
GO
ALTER AUTHORIZATION ON [dbo].[instructor_add_Exam_to_student] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[instructor_create_exam_manual]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[instructor_create_exam_manual] 
(@instructor_id int ,@allowanceOption_id int,@course_id int,
  @tfdeg int,@cdeg int,@tdeg int)
 as 
 begin
 declare @exam_id int,@examdeg int,@coursemaxdeg int;

 set @examdeg=(select count(E.qid)from Eqc E where E.course_id=@course_id and E.ints_id=@instructor_id) 
 * @tfdeg +(select count(E.qid)from Eqc1 E where E.course_id=@course_id and E.ints_id=@instructor_id)*
 @cdeg +(select count(E.qid)from Eqc2 E where E.course_id=@course_id and E.ints_id=@instructor_id) * @tdeg 
 
 set @coursemaxdeg=(select max_deg from Course where course_id=@course_id)

 if(@examdeg <= @coursemaxdeg)
 begin

 insert into Exam(instructor_id,course_id,branch_id,intake_id,track_id,allowanceOption_id)
 values(@instructor_id,@course_id,1,1,1,@allowanceOption_id)
 set @exam_id=(select top 1 E.exam_id from Exam E order by exam_id desc);

  --insert choose questions
  --make question from 1 to n 
       DECLARE @id INT 
    insert into ExamQuestionsChoice(id,question_id ,question_des,option1,option2,option3,option4,degree,answerChoice ,exam_id)
	select 0,Q.question_id, Q.question_des ,Q.option1,Q.option2,
	Q.option3,Q.option4,@cdeg,Q.answer,@exam_id from QuestionstChoice Q
	where  Q.question_id in(select E.qid from Eqc E where E.ints_id=@instructor_id and E.course_id=@course_id  )
  
    SET @id = 0 
    UPDATE ExamQuestionsChoice 
    SET @id = id = @id + 1 where exam_id=@exam_id
 
 
 --insert choose true or false questions
        SET @id = 0 
		 insert into ExamQuestionsTF(id,question_id ,question_des,optionT,optionF,degree,answerTF ,exam_id)
		select ++@id ,Q.question_id, Q.question_des ,Q.option1,Q.option2,
		@tfdeg,Q.answer,@exam_id from QuestionstTF Q
			where  Q.question_id in(select E.qid from Eqc1 E where E.ints_id=@instructor_id and E.course_id=@course_id  )
		  SET @id = 0 
       UPDATE ExamQuestionsTF 
       SET @id = id = @id + 1 where exam_id=@exam_id
		 --insert text questions 
		 insert into ExamQuestionsText(id,question_id,question_des,degree,answerText ,exam_id)
		 select ++@id ,Q.question_id,  Q.question_des ,@tdeg,Q.answer,@exam_id from QuestionstText Q
		where  Q.question_id in(select E.qid from Eqc2 E where E.ints_id=@instructor_id and E.course_id=@course_id  )
	
	  SET @id = 0 
       UPDATE ExamQuestionsText 
       SET @id = id = @id + 1 where exam_id=@exam_id

		--delete question that inserted into exam 
	delete from Eqc where ints_id=@instructor_id and course_id=@course_id
	delete from Eqc1 where ints_id=@instructor_id and course_id=@course_id
	delete from Eqc2 where ints_id=@instructor_id and course_id=@course_id
	
	end
	else 
		begin
			print 'the exam degree  more than than course maximum degree'
		end

 end
GO
ALTER AUTHORIZATION ON [dbo].[instructor_create_exam_manual] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[manager_delete_course]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[manager_delete_course] (@cor_id int)
as
begin

delete  
from Course  where course_id=@cor_id 
end
GO
ALTER AUTHORIZATION ON [dbo].[manager_delete_course] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[manager_delete_instractor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[manager_delete_instractor] (@ins_id int,@man_ID int)
as
begin

delete  
from Instructor where instructor_id=@ins_id and manager_ID=@man_ID
end
GO
ALTER AUTHORIZATION ON [dbo].[manager_delete_instractor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[manager_delete_instractor_foreach_course]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[manager_delete_instractor_foreach_course] (@instr_id int ,@cor_id int)
as
begin

delete  I 
from Instructor I inner join Course C on  I.instructor_id=C.instructor_id inner join Instructor on
C.instructor_id=@instr_id where C.course_id=@cor_id
 
end
exec ma
GO
ALTER AUTHORIZATION ON [dbo].[manager_delete_instractor_foreach_course] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[manager_update_course]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[manager_update_course] (@cor_name nvarchar(50),@mn_deg int  ,@mx_deg int,@ins_id int,@man_id int,@cor_id int)
as
begin


update Course


set course_name=@cor_name,min_deg=@mn_deg,max_deg=@mx_deg ,instructor_id=@ins_id
from Course  where course_id=@cor_id



end 
GO
ALTER AUTHORIZATION ON [dbo].[manager_update_course] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[manager_update_instractor]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[manager_update_instractor] (@ins_fn nvarchar(50),@ins_ln nvarchar(50),@mail nvarchar(50) ,@address nvarchar(50),@phone nvarchar(15),@man_ID int)
as
begin

update Instructor

set instructor_f_n=@ins_fn,instructor_l_n=@ins_ln,email=@mail,adress=@address,phone=@phone,manager_ID=@man_ID
from Instructor where manager_ID=@man_ID 

end
GO
ALTER AUTHORIZATION ON [dbo].[manager_update_instractor] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[mannager_add_course]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mannager_add_course] (@cor_name nvarchar(50),@mn_deg int  ,@mx_deg int,@ins_id int)
as


begin
insert into Course(course_name,min_deg,max_deg,instructor_id)  

values (@cor_name ,@mn_deg ,@mx_deg ,@ins_id) 
end 
GO
ALTER AUTHORIZATION ON [dbo].[mannager_add_course] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[mannager_add_instractors]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mannager_add_instractors] (@ins_fn nvarchar(50),@ins_ln nvarchar(50),@mail nvarchar(50)  ,@address nvarchar(50),@phone nvarchar(15),@man_ID int)
as
begin
insert into Instructor(instructor_f_n,instructor_l_n,email,adress,phone,manager_ID) 
values(@ins_fn ,@ins_ln ,@mail   ,@address ,@phone ,@man_ID )
end 
GO
ALTER AUTHORIZATION ON [dbo].[mannager_add_instractors] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[mannager_add_instractors_foreach_course]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mannager_add_instractors_foreach_course]  (@ins_fn nvarchar(50),@ins_ln nvarchar(50),@mail nvarchar(50)  ,@address nvarchar(50),@phone nvarchar(15),@man_ID int,@course_id int,@instr_id int)
as
begin
update Instructor
 
set instructor_f_n=@ins_fn,instructor_l_n=@ins_ln,email=@mail,adress=@address,phone=@phone,manager_ID=@man_ID  from Instructor inner join Course 
on Course.instructor_id=Instructor.instructor_id  
where  course_id=@course_id

end 

exec mannager_add_instractors_foreach_course 'jjjjjj','sssss','@@@','wwwwww','554444',2,1,2
select*from Instructor
select*from course


-------------------------------------------------------------------------------------------------------------
GO
ALTER AUTHORIZATION ON [dbo].[mannager_add_instractors_foreach_course] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[mannager_add_student]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mannager_add_student] (@fn varchar(50),@ln varchar(50),@addr varchar(50)
,@phone varchar(50),@branch_id int,@intake_id int,@track_id int,@courseID int)
as
begin
insert into Student(student_fn,student_ln,adress,phone,branch_id,intake_id,track_id,course_id) 
values(@fn,@ln,@addr,@phone,@branch_id,@intake_id,@track_id,@courseID)
end 
GO
ALTER AUTHORIZATION ON [dbo].[mannager_add_student] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[show_exam_to_student]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ----------------------------------result and answers-------------
 CREATE proc [dbo].[show_exam_to_student] @student_id int ,@course_id int 
as --show exams and create answer sheet
begin

declare @varexam_id int 
set @varexam_id =(select exam_id from Student where course_id=@course_id and student_id=@student_id)

declare @examd datetime,@exams datetime;
set @exams=(select startTime from Exam where exam_id=@varexam_id)
set @examd=(select endTime from Exam where exam_id=@varexam_id)

declare @test int 
  set @test=(select studentAnswer_id from StudentAnswer
   where exam_id=@varexam_id and course_id=@course_id and student_id=@student_id)

	if (@test is null)and (@varexam_id is not null)
	begin
			 insert into StudentAnswer(course_id,exam_id,student_id)
				values(@course_id,@varexam_id,@student_id)
				set @test=(select top 1 studentAnswer_id from StudentAnswer order by student_id desc)
				insert into AnswerC(question_id,studentAnswer_id) select E.id,@test from ExamQuestionsChoice E 
				where E.exam_id=@varexam_id;

	            insert into AnswerTF(question_id,studentAnswer_id) select E.id ,@test from ExamQuestionsTF E 
				where E.exam_id=@varexam_id;
	            
				insert into AnswerText(question_id,studentAnswer_id) select E.id,@test from ExamQuestionsText E 
				where E.exam_id=@varexam_id;

				--create answer table
	end
		if( @examd >=SYSDATETIME())and(@exams <=SYSDATETIME())
				begin
		select * from Exam
		where exam_id=@varexam_id 

		select E.id , E.question_des,E.option1 ,
		E.option2,E.option3 ,E.option4 , E.degree from ExamQuestionsChoice E
				where E.exam_id=@varexam_id
		union all 
		select E.id,E.question_des ,CASE
						 WHEN E.optionT=0 THEN 'true'
							ELSE ' ' 
							end as 'True option'
							,CASE
							WHEN E.optionf=1 THEN 'false'
							 ELSE ' ' 
							end as' False Option' ,'','', E.degree  from ExamQuestionsTF E
         		where E.exam_id=@varexam_id
				union all 
		select  E.id,E.question_des,'','','','', E.degree from ExamQuestionsText E
				where E.exam_id=@varexam_id
				end
	else 
		begin
			 print 'wait to your Exam specific time'
	     end 




 end 
GO
ALTER AUTHORIZATION ON [dbo].[show_exam_to_student] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Training_manage_add_branch]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Training_manage_add_branch](@br_id int,@br_name nvarchar(50))
as 
begin 
insert into Branch(branch_id,branch_name) values (@br_id,@br_name )
end
GO
ALTER AUTHORIZATION ON [dbo].[Training_manage_add_branch] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Training_manage_add_track]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Training_manage_add_track](@tr_id int,@tr_name nvarchar(50))
as 
begin 
insert into Track (track_id,track_name) values (@tr_id ,@tr_name )
end
GO
ALTER AUTHORIZATION ON [dbo].[Training_manage_add_track] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Training_manage_edit_branch]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Training_manage_edit_branch](@id int,@br_id int,@br_name nvarchar(50))
as 
begin 
update Branch
set  branch_id=@br_id,branch_name= @br_name  where branch_id=@id


end
GO
ALTER AUTHORIZATION ON [dbo].[Training_manage_edit_branch] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Training_manage_edit_track]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Training_manage_edit_track](@id int,@tr_name nvarchar(50))
as 
begin 
update Track
set track_name= @tr_name  where track_id=@id 


end

-----------------------------------------------------------------------------------------
GO
ALTER AUTHORIZATION ON [dbo].[Training_manage_edit_track] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[Training_manager_add_intake]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Training_manager_add_intake](@int_num int,@int_id int)
as 
begin 
insert into Intake (intake_number,intake_id) values (@int_num,@int_id )
end
GO
ALTER AUTHORIZATION ON [dbo].[Training_manager_add_intake] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[count_stduent_result]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[count_stduent_result] on [dbo].[AnswerC] 
after  update 
as
begin 
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)

update StudentAnswer set resultC=(select SUM(C.degree)from AnswerC C where C.studentAnswer_id=@answer_id)
where studentAnswer_id=@answer_id

end
GO
ALTER TABLE [dbo].[AnswerC] ENABLE TRIGGER [count_stduent_result]
GO
/****** Object:  Trigger [dbo].[count_stduent_result_3]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[count_stduent_result_3] on [dbo].[AnswerText] 
after  update ,insert 
as
begin 
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)
update StudentAnswer set resultText=(select SUM(C.degree) from AnswerText C where C.studentAnswer_id=@answer_id)
where studentAnswer_id=@answer_id
end
GO
ALTER TABLE [dbo].[AnswerText] ENABLE TRIGGER [count_stduent_result_3]
GO
/****** Object:  Trigger [dbo].[count_stduent_result_2]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[count_stduent_result_2] on [dbo].[AnswerTF] 
after  update 
as
begin 
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)
update StudentAnswer set resultTF=(select SUM(C.degree) from AnswerTF C where C.studentAnswer_id=@answer_id)
where studentAnswer_id=@answer_id
end
GO
ALTER TABLE [dbo].[AnswerTF] ENABLE TRIGGER [count_stduent_result_2]
GO
/****** Object:  Trigger [dbo].[Store_exams_year_tri]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Store_exams_year_tri] on [dbo].[Exam]
after insert
as
begin
declare @inst nvarchar(102),@c nvarchar(50)
set @inst=(select CONCAT(I.instructor_f_n,' ',I.instructor_l_n) from Instructor I
where I.instructor_id=
(select I.instructor_id from inserted I) )

set @c=(select C.course_name from Course C
where C.course_id=
(select I.course_id from inserted I) )
insert into ExamsLip(instructor_name,course_name,exams_year)
values(@inst,@c,YEAR(GETDATE()))
end
GO
ALTER TABLE [dbo].[Exam] ENABLE TRIGGER [Store_exams_year_tri]
GO
/****** Object:  Trigger [dbo].[count_final_result]    Script Date: 9/17/2022 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[count_final_result] on [dbo].[StudentAnswer]
after update ,insert 
as
begin
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)
update StudentAnswer set result=resultC+resultTF+resultText
where studentAnswer_id=@answer_id


update StudentAnswer set exam_degree=(
select sum(E.degree) from ExamQuestionsChoice E where E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=@answer_id))+(
select sum(E.degree) from ExamQuestionsTF E where E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=@answer_id))+(
select sum(E.degree) from ExamQuestionsText E where E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=@answer_id))
 where studentAnswer_id=@answer_id

end
GO
ALTER TABLE [dbo].[StudentAnswer] ENABLE TRIGGER [count_final_result]
GO
USE [master]
GO
ALTER DATABASE [sqlproject] SET  READ_WRITE 
GO
