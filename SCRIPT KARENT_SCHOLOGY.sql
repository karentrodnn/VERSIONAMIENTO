

/****** Karent Franchesca Rodgriguez Nuñez 15-EIIN-1-021 0514 ******/
USE [master]
GO
/****** Object:  Database [KARENT_SCHOLOGY]    Script Date: 04/15/2019 18:55:06 ******/
CREATE DATABASE [KARENT_SCHOLOGY] ON  PRIMARY 
( NAME = N'KARENT_SCHOLOGY', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\KARENT_SCHOLOGY.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KARENT_SCHOLOGY_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\KARENT_SCHOLOGY_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KARENT_SCHOLOGY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET ANSI_NULLS OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET ANSI_PADDING OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET ARITHABORT OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET AUTO_CLOSE ON
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET  ENABLE_BROKER
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET  READ_WRITE
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET RECOVERY SIMPLE
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET  MULTI_USER
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [KARENT_SCHOLOGY] SET DB_CHAINING OFF
GO
USE [KARENT_SCHOLOGY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarifa](
	[IdTarifa] [char](1) NOT NULL,
	[PreTarifa] [money] NOT NULL,
	[Descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTarifa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[IdProfesor] [char](4) NOT NULL,
	[ApeProfesor] [varchar](30) NOT NULL,
	[NomProfesor] [varchar](30) NOT NULL,
	[DirProfesor] [varchar](50) NULL,
	[TelProfesor] [varchar](12) NULL,
	[EmailProfesor] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProfesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parametro](
	[Campo] [varchar](10) NOT NULL,
	[Contador] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Campo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciclo]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciclo](
	[IdCiclo] [char](7) NOT NULL,
	[FecInicio] [datetime] NULL,
	[FecTermino] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCiclo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [char](5) NOT NULL,
	[ApeAlumno] [varchar](30) NOT NULL,
	[NomAlumno] [varchar](30) NOT NULL,
	[DirAlumno] [varchar](50) NULL,
	[TelAlumno] [varchar](12) NULL,
	[EmailAlumno] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [char](6) NOT NULL,
	[Password] [char](6) NOT NULL,
	[ApeEmpleado] [varchar](30) NOT NULL,
	[NomEmpleado] [varchar](30) NOT NULL,
	[Cargo] [varchar](25) NOT NULL,
	[DirEmpleado] [varchar](50) NULL,
	[TelEmpleado] [varchar](12) NULL,
	[EmailEmpleado] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[IdCurso] [char](4) NOT NULL,
	[IdTarifa] [char](1) NOT NULL,
	[NomCurso] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursoProgramado]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CursoProgramado](
	[IdCursoProg] [int] IDENTITY(1,1) NOT NULL,
	[IdCurso] [char](4) NOT NULL,
	[IdCiclo] [char](7) NOT NULL,
	[IdProfesor] [char](4) NULL,
	[Vacantes] [tinyint] NOT NULL,
	[PreCursoProg] [money] NOT NULL,
	[Horario] [varchar](24) NOT NULL,
	[Activo] [bit] NULL,
	[Matriculados] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCursoProg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 04/15/2019 18:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Matricula](
	[IdCursoProg] [int] NOT NULL,
	[IdAlumno] [char](5) NOT NULL,
	[FecMatricula] [datetime] NOT NULL,
	[ExaParcial] [real] NULL,
	[ExaFinal] [real] NULL,
	[Promedio] [real] NULL,
	[Subsanacion] [bit] NULL,
	[ExaSub] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCursoProg] ASC,
	[IdAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__CursoProg__Vacan__09DE7BCC]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[CursoProgramado] ADD  DEFAULT ((20)) FOR [Vacantes]
GO
/****** Object:  Default [DF__CursoProg__Activ__0AD2A005]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[CursoProgramado] ADD  DEFAULT ((1)) FOR [Activo]
GO
/****** Object:  Default [DF__CursoProg__Matri__0BC6C43E]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[CursoProgramado] ADD  DEFAULT ((0)) FOR [Matriculados]
GO
/****** Object:  Default [DF__Matricula__FecMa__145C0A3F]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[Matricula] ADD  DEFAULT (getdate()) FOR [FecMatricula]
GO
/****** Object:  Default [DF__Matricula__Subsa__15502E78]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[Matricula] ADD  DEFAULT ((0)) FOR [Subsanacion]
GO
/****** Object:  ForeignKey [FK__Curso__IdTarifa__24927208]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD FOREIGN KEY([IdTarifa])
REFERENCES [dbo].[Tarifa] ([IdTarifa])
GO
/****** Object:  ForeignKey [FK__CursoProg__IdCic__25869641]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[CursoProgramado]  WITH CHECK ADD FOREIGN KEY([IdCiclo])
REFERENCES [dbo].[Ciclo] ([IdCiclo])
GO
/****** Object:  ForeignKey [FK__CursoProg__IdCur__267ABA7A]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[CursoProgramado]  WITH CHECK ADD FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Curso] ([IdCurso])
GO
/****** Object:  ForeignKey [FK__CursoProg__IdPro__276EDEB3]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[CursoProgramado]  WITH CHECK ADD FOREIGN KEY([IdProfesor])
REFERENCES [dbo].[Profesor] ([IdProfesor])
GO
/****** Object:  ForeignKey [FK__Matricula__IdAlu__29572725]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumno] ([IdAlumno])
GO
/****** Object:  ForeignKey [FK__Matricula__IdCur__286302EC]    Script Date: 04/15/2019 18:55:08 ******/
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD FOREIGN KEY([IdCursoProg])
REFERENCES [dbo].[CursoProgramado] ([IdCursoProg])
GO
