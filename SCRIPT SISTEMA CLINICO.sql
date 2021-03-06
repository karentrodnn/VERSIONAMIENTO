/****** Karent Franchesca Rodgriguez Nuñez 15-EIIN-1-021 0514 ******/
USE [SGC]
GO
/****** Object:  Table [dbo].[tblUnidadTiempo]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUnidadTiempo](
	[IdUnidadTiempo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblUnidadTiempo] PRIMARY KEY CLUSTERED 
(
	[IdUnidadTiempo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUnidadMedicamento]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUnidadMedicamento](
	[IdUnidadMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblUnidadMedicamento] PRIMARY KEY CLUSTERED 
(
	[IdUnidadMedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUNAP]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUNAP](
	[IdUNAP] [int] NOT NULL,
	[CodigoUNAP] [varchar](20) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdCentroSalud] [int] NULL,
	[Direccion] [varchar](400) NOT NULL,
	[IdProvincia] [int] NULL,
	[IdMunicipio] [int] NULL,
	[IdSeccion] [int] NULL,
	[CodigoSector] [varchar](10) NULL,
	[IdRegion] [int] NULL,
	[Area] [varchar](5) NULL,
	[Zona] [varchar](5) NULL,
	[Latitud] [varchar](25) NULL,
	[Longitud] [varchar](25) NULL,
	[Gestion] [varchar](20) NULL,
	[IdTipo] [int] NULL,
 CONSTRAINT [PK_tblUNAP] PRIMARY KEY CLUSTERED 
(
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoPersona]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoPersona](
	[IdTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblTipoPersona] PRIMARY KEY CLUSTERED 
(
	[IdTipoPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoPatologia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoPatologia](
	[IdTipoPatologia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[AmbosGeneros] [bit] NULL,
 CONSTRAINT [PK_tblTipoPatologia] PRIMARY KEY CLUSTERED 
(
	[IdTipoPatologia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoDocumento]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoDocumento](
	[IdTipoDocumento] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoConsulta]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoConsulta](
	[IdTipoConsulta] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](5) NULL,
	[EdadMaxima] [int] NULL,
	[EdadMinima] [int] NULL,
	[AmbosGeneros] [bit] NULL,
 CONSTRAINT [PK_tblTipoConsulta] PRIMARY KEY CLUSTERED 
(
	[IdTipoConsulta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTarjetaProsoli]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTarjetaProsoli](
	[Tarjeta] [varchar](50) NOT NULL,
	[NoHogar] [bigint] NOT NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblTarjetaProsoli] PRIMARY KEY CLUSTERED 
(
	[Tarjeta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVisitaDomiciliaria]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVisitaDomiciliaria](
	[IdVisitaDomiciliaria] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Motivo] [varchar](1000) NOT NULL,
	[Tratado] [varchar](1000) NOT NULL,
	[Recomendacion] [varchar](1000) NOT NULL,
	[IdPaciente] [bigint] NULL,
	[IdUnapPaciente] [int] NULL,
	[Cedula] [varchar](11) NULL,
	[NSS] [int] NULL,
	[IdMiembroSIPS] [int] NULL,
	[Nombre] [varchar](60) NULL,
	[Apellido] [varchar](60) NULL,
	[FichaFamiliar] [varchar](20) NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblVisitaDominiciliaria] PRIMARY KEY CLUSTERED 
(
	[IdVisitaDomiciliaria] ASC,
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVacunas]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVacunas](
	[IdVacuna] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[TipoVacuna] [int] NOT NULL,
	[Periocidad] [int] NULL,
	[EdadMaxima] [int] NULL,
	[EdadMinima] [int] NULL,
	[AplicacionEspecial] [bit] NOT NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblVacunas] PRIMARY KEY CLUSTERED 
(
	[IdVacuna] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVacunaDosis]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVacunaDosis](
	[IdDosis] [int] IDENTITY(1,1) NOT NULL,
	[IdVacuna] [int] NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[MesesProxima] [int] NULL,
	[DosisDependencia] [int] NULL,
	[IdLote] [int] NOT NULL,
	[IdColor] [int] NULL,
 CONSTRAINT [PK_tblVacunaDosis] PRIMARY KEY CLUSTERED 
(
	[IdDosis] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVacunacionPaciente]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVacunacionPaciente](
	[IdVacunacion] [int] NOT NULL,
	[IdDosis] [int] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdUnap] [int] NOT NULL,
	[IdConsulta] [bigint] NULL,
	[IdMedico] [int] NULL,
	[FechaAplicacion] [datetime] NOT NULL,
	[Comentario] [varchar](200) NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblVacunacionPaciente] PRIMARY KEY CLUSTERED 
(
	[IdVacunacion] ASC,
	[IdDosis] ASC,
	[IdPaciente] ASC,
	[IdUnap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVacuna]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVacuna](
	[IdVacuna] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[MesesDosis1] [int] NOT NULL,
	[MesesDosis2] [int] NOT NULL,
	[MesesDosis3] [int] NOT NULL,
	[MesesDosis4] [int] NOT NULL,
	[MesesDosis5] [int] NOT NULL,
 CONSTRAINT [PK_tblVacuna] PRIMARY KEY CLUSTERED 
(
	[IdVacuna] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En este campo se almacena la cantidad de meses a esperar para la primera vacuna 0 es recien nacido, -1 es que no se aplica, y el numero mayor a 0 indica la cantidad de meses a esperar a partir de la ultima vacuna' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblVacuna', @level2type=N'COLUMN',@level2name=N'MesesDosis1'
GO
/****** Object:  Table [dbo].[tblARS]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblARS](
	[IdARS] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblARS] PRIMARY KEY CLUSTERED 
(
	[IdARS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAdvertenciaPatologia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdvertenciaPatologia](
	[IdPatologia] [int] NOT NULL,
	[CorreoAdvertencia] [varchar](500) NULL,
	[TelefonoAdvertencia] [varchar](50) NULL,
	[GeneraAdvertencia] [bit] NOT NULL,
 CONSTRAINT [PK_tblAdvertenciaPatologia] PRIMARY KEY CLUSTERED 
(
	[IdPatologia] ASC,
	[GeneraAdvertencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblActividad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblActividad](
	[IdActividad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_tblActividad] PRIMARY KEY CLUSTERED 
(
	[IdActividad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Hospitales]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Hospitales](
	[IdRegion] [int] NOT NULL,
	[idArea] [int] NOT NULL,
	[IdEstablecimiento] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_Hospitales] PRIMARY KEY CLUSTERED 
(
	[IdRegion] ASC,
	[idArea] ASC,
	[IdEstablecimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCentroSalud]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCentroSalud](
	[IdCentroSalud] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCentro] [varchar](20) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Direccion] [varchar](250) NULL,
	[Region] [varchar](100) NULL,
	[Area] [varchar](100) NULL,
 CONSTRAINT [PK_tblCentroSalud] PRIMARY KEY CLUSTERED 
(
	[IdCentroSalud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCatalogo]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCatalogo](
	[GrupoCatalogo] [char](10) NOT NULL,
	[IdItem] [int] NOT NULL,
	[Descripcion1] [varchar](200) NOT NULL,
	[Descripcion2] [varchar](500) NULL,
	[Estado] [bit] NOT NULL,
	[Orden] [int] NOT NULL,
	[Comentarios] [char](10) NULL,
 CONSTRAINT [tblCatalogo_PK] PRIMARY KEY CLUSTERED 
(
	[GrupoCatalogo] ASC,
	[IdItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCondicionActividad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCondicionActividad](
	[IdCondicionActividad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblCondicionActividad] PRIMARY KEY CLUSTERED 
(
	[IdCondicionActividad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultaSeriales]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConsultaSeriales](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[Serial] [nvarchar](max) NOT NULL,
	[IMEI] [nvarchar](max) NOT NULL,
	[IdLote] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConsultaInfante]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultaInfante](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[EdadMeses] [int] NOT NULL,
	[Peso] [decimal](5, 2) NOT NULL,
	[Talla] [decimal](5, 2) NOT NULL,
	[Comentario] [varchar](1000) NULL,
	[ComentarioVacuna] [varchar](1000) NULL,
	[PerimetroCefalico] [decimal](5, 2) NULL,
	[MedicionTalla] [char](1) NULL,
 CONSTRAINT [PK_tblConsultaInfante_1] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMedicamentoMaestro]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMedicamentoMaestro](
	[IdMedicamento] [int] NOT NULL,
	[IdMedicamentoMaestro] [int] NULL,
 CONSTRAINT [PK_tblMedicamentoMaestro] PRIMARY KEY CLUSTERED 
(
	[IdMedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMedicamento]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMedicamento](
	[IdMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[PaginaMedicamento] [int] NULL,
 CONSTRAINT [PK_tblMedicamentos] PRIMARY KEY CLUSTERED 
(
	[IdMedicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblLote]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblLote](
	[IdLote] [int] IDENTITY(1,1) NOT NULL,
	[FechaLote] [datetime] NULL,
	[Comentario] [varchar](500) NULL,
	[Automatico] [bit] NULL,
	[EstadoLote] [int] NULL,
 CONSTRAINT [PK_TblLote] PRIMARY KEY CLUSTERED 
(
	[IdLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIntervencion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIntervencion](
	[IdIntervencion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[CodigoIntervencion] [varchar](50) NULL,
 CONSTRAINT [PK_tblIntervencion] PRIMARY KEY CLUSTERED 
(
	[IdIntervencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGrupoSintoma]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGrupoSintoma](
	[idGrupoSintoma] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_tblGrupoSintoma] PRIMARY KEY CLUSTERED 
(
	[idGrupoSintoma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGruposEnfermedades]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGruposEnfermedades](
	[IdGrupoEnfermedad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[CodigoMostrar] [varchar](100) NULL,
 CONSTRAINT [PK_tblGruposEnfermedades] PRIMARY KEY CLUSTERED 
(
	[IdGrupoEnfermedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGenero]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGenero](
	[IdGenero] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblGenero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblExploracion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblExploracion](
	[IdExploracion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_tblExploracion] PRIMARY KEY CLUSTERED 
(
	[IdExploracion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEstandardPesoAlturaOMS]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEstandardPesoAlturaOMS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoMedicion] [tinyint] NOT NULL,
	[IdGenero] [int] NOT NULL,
	[Valor] [decimal](10, 2) NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Altura] [decimal](10, 2) NOT NULL,
	[IdDescripcion] [int] NOT NULL,
 CONSTRAINT [PK_tblEstandardPesoAlturaOMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEstandardNutricionalOMS]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEstandardNutricionalOMS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoMedicion] [tinyint] NOT NULL,
	[IdGenero] [int] NOT NULL,
	[Valor] [decimal](10, 2) NOT NULL,
	[TipoTiempo] [char](1) NOT NULL,
	[CantidadTiempo] [tinyint] NOT NULL,
	[IdDescripcion] [int] NOT NULL,
 CONSTRAINT [PK_tblEstandardNutricionalOMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEstadoCivil]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEstadoCivil](
	[IdEstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblEstadoCivil] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCivil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEspecialidadMedica]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEspecialidadMedica](
	[IdEspecialidadMedica] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblEspecialidadMedica] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidadMedica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEscolaridad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEscolaridad](
	[IdEscolaridad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblEscolaridad] PRIMARY KEY CLUSTERED 
(
	[IdEscolaridad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEquivalenciaMunicipio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEquivalenciaMunicipio](
	[IdProvincia2010] [char](2) NOT NULL,
	[IdMunicipio2010] [char](2) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[IdMunicipio] [int] NOT NULL,
 CONSTRAINT [PK_tblEquivalenciaMunicipio] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC,
	[IdMunicipio2010] ASC,
	[IdProvincia] ASC,
	[IdMunicipio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEquiposUbicacion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEquiposUbicacion](
	[IdUbicacion] [int] IDENTITY(1,1) NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[MacAddressEquipo] [varchar](25) NOT NULL,
	[SerialEquipo] [varchar](25) NULL,
	[TelefonoTarjeta] [varchar](20) NULL,
	[CedulaMedico] [varchar](11) NULL,
	[NombreMedico] [varchar](100) NULL,
	[ConectadoRed] [bit] NULL,
	[NombreSupervisor] [varchar](100) NULL,
	[FechaEntrega] [datetime] NULL,
	[TarjetaIMEI] [varchar](17) NULL,
 CONSTRAINT [PK_tblEquiposUbicacion] PRIMARY KEY CLUSTERED 
(
	[IdUbicacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero asignado a la tarjeta de internet ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblEquiposUbicacion', @level2type=N'COLUMN',@level2name=N'TelefonoTarjeta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cedula del Medico que se le entrego el equipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblEquiposUbicacion', @level2type=N'COLUMN',@level2name=N'CedulaMedico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblEquiposUbicacion', @level2type=N'COLUMN',@level2name=N'NombreMedico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador maquina en Red o trabajando Local' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblEquiposUbicacion', @level2type=N'COLUMN',@level2name=N'ConectadoRed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de quien entrego la laptop.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblEquiposUbicacion', @level2type=N'COLUMN',@level2name=N'NombreSupervisor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero identificador de la tarjeta.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblEquiposUbicacion', @level2type=N'COLUMN',@level2name=N'TarjetaIMEI'
GO
/****** Object:  Table [dbo].[tblPatologiaGinecologica]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPatologiaGinecologica](
	[IdPatologiaGinecologica] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblPatologiaGinecologica] PRIMARY KEY CLUSTERED 
(
	[IdPatologiaGinecologica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPatologia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPatologia](
	[IdPatologia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
	[CodigoPatologia] [varchar](20) NULL,
	[IdTipoPatologia] [int] NOT NULL,
 CONSTRAINT [PK_tblPatologia] PRIMARY KEY CLUSTERED 
(
	[IdPatologia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se refiere a algun codigo especial que tenga la patologia o enfermedad, por el cual MSPAS se refiera a esta.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPatologia', @level2type=N'COLUMN',@level2name=N'CodigoPatologia'
GO
/****** Object:  Table [dbo].[tblParticipante]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblParticipante](
	[IdParticipante] [bigint] NOT NULL,
	[IdPaciente] [bigint] NULL,
	[IdUNAP] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NULL,
	[Cedula] [varchar](11) NULL,
	[NSS] [varchar](10) NULL,
	[IdMiembroSIPS] [int] NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblPartipante] PRIMARY KEY CLUSTERED 
(
	[IdParticipante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblParentezco]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblParentezco](
	[IdParentezco] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblParentezco] PRIMARY KEY CLUSTERED 
(
	[IdParentezco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMunicipio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMunicipio](
	[IdMunicipio] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdProvincia] [int] NOT NULL,
 CONSTRAINT [PK_tblMunicipio] PRIMARY KEY CLUSTERED 
(
	[IdMunicipio] ASC,
	[IdProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMServicios]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMServicios](
	[IdMServicio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblMServicios] PRIMARY KEY CLUSTERED 
(
	[IdMServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMResultado]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMResultado](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdPruebaLaboratorio] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Laboratorio] [varchar](50) NOT NULL,
	[Observaciones] [varchar](250) NULL,
	[IdMedicoResultado] [int] NOT NULL,
	[IdUnapResultado] [int] NOT NULL,
	[FechaSincronizacion] [datetime] NULL,
 CONSTRAINT [PK_tblMResultado] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC,
	[IdPruebaLaboratorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDetalleGruposEnfermedades]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDetalleGruposEnfermedades](
	[IdDetalleGrupoEnfermedad] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoEnfermedad] [int] NOT NULL,
	[CodigoPatologia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblDetalleGruposEnfermedades] PRIMARY KEY CLUSTERED 
(
	[IdDetalleGrupoEnfermedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRol]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [tblRol_PK] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblReligion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReligion](
	[IdReligion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblReligion] PRIMARY KEY CLUSTERED 
(
	[IdReligion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegimen]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegimen](
	[IdRegimen] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblRegimen] PRIMARY KEY CLUSTERED 
(
	[IdRegimen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOcupacion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOcupacion](
	[IdOcupacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblOcupacion] PRIMARY KEY CLUSTERED 
(
	[IdOcupacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNacionalidad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNacionalidad](
	[IdNacionalidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblNacionalidad] PRIMARY KEY CLUSTERED 
(
	[IdNacionalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRaza]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRaza](
	[IdRaza] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblRaza] PRIMARY KEY CLUSTERED 
(
	[IdRaza] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPuerpuerio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPuerpuerio](
	[IdPuerperio] [int] NOT NULL,
	[IdUnap] [int] NOT NULL,
	[Terminacion] [int] NULL,
	[FechaTerminacion] [datetime] NULL,
	[NivelAtencion] [int] NULL,
	[AcompanateTrabParto] [int] NULL,
	[NoHCRN] [varchar](10) NULL,
	[NombreRN] [varchar](50) NULL,
	[AtendioParto] [int] NULL,
	[AtendioPartoResponsable] [varchar](100) NULL,
	[AtendioNeonato] [int] NULL,
	[AtendioNeonatoResponsable] [varchar](100) NULL,
	[MuerteIntra] [int] NULL,
	[Epistomia] [int] NULL,
	[Desgarros] [int] NULL,
	[Alumbramiento] [int] NULL,
	[Sexo] [int] NULL,
	[PesoNacer] [decimal](4, 2) NULL,
	[Logitud] [int] NULL,
	[PerCefalico] [int] NULL,
	[EdadPorExFisico] [int] NULL,
	[PesoEG] [int] NULL,
	[APGAR1] [int] NULL,
	[APGAR5] [int] NULL,
	[ReanimRespir] [int] NULL,
	[VDRL] [int] NULL,
	[EgresoRNHora] [int] NULL,
	[EgresoRNDia] [int] NULL,
	[EgresoRNMes] [int] NULL,
	[EgresoRNPeso] [int] NULL,
	[EgresoRNCondicion] [int] NULL,
	[EgresoMFecha] [datetime] NULL,
	[EgresoMCondicion] [int] NULL,
	[AtirubeolaPP] [bit] NULL,
	[Anticoncepcion] [int] NULL,
	[IdPaciente] [bigint] NOT NULL,
	[Cerrado] [bit] NULL,
	[FechaConsulta] [datetime] NULL,
	[SinPatologias] [bit] NULL,
	[NombreEstablecimiento] [varchar](50) NULL,
	[idLote] [int] NOT NULL,
 CONSTRAINT [PK_tblPuerpuerio] PRIMARY KEY CLUSTERED 
(
	[IdPuerperio] ASC,
	[IdUnap] ASC,
	[IdPaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPruebaLaboratorio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPruebaLaboratorio](
	[IdPruebaLaboratorio] [int] NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[CondicionMuestra] [varchar](300) NULL,
	[CondicionPaciente] [varchar](300) NULL,
 CONSTRAINT [PK_tblPruebaLaboratorio] PRIMARY KEY CLUSTERED 
(
	[IdPruebaLaboratorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProvincia2010]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProvincia2010](
	[IdProvincia2010] [char](2) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdRegion] [int] NULL,
 CONSTRAINT [PK_tblProvincia2010] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProvincia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProvincia](
	[IdProvincia] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdRegion] [int] NULL,
 CONSTRAINT [PK_tblProvincia] PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProcedimiento]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProcedimiento](
	[IdProcedimiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[CodigoProcedimiento] [varchar](20) NULL,
 CONSTRAINT [PK_tblProcedimiento] PRIMARY KEY CLUSTERED 
(
	[IdProcedimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se refiere a algun codigo especial que tenga la Procedimiento o enfermedad, por el cual MSPAS se refiera a esta.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProcedimiento', @level2type=N'COLUMN',@level2name=N'CodigoProcedimiento'
GO
/****** Object:  Table [dbo].[tblPermiso]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPermiso](
	[idPermiso] [varchar](100) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Grupo] [varchar](100) NULL,
 CONSTRAINT [tblPermisos_PK] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPatronNutricion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPatronNutricion](
	[IdPatron] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NOT NULL,
	[Meses] [int] NOT NULL,
	[PesoKgInicial] [decimal](5, 2) NOT NULL,
	[PesoKgFinal] [decimal](5, 2) NOT NULL,
	[DescripcionNutricion] [varchar](25) NOT NULL,
	[NivelNutricion] [smallint] NOT NULL,
 CONSTRAINT [PK_tblPatronNutricion] PRIMARY KEY CLUSTERED 
(
	[IdPatron] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDResultadoGlucemia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDResultadoGlucemia](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[LimiteInferior] [smallint] NOT NULL,
	[LimiteSuperior] [smallint] NOT NULL,
	[Resultado] [smallint] NOT NULL,
 CONSTRAINT [PK_tblDResultadoGlucemia] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDResultadoBaciloscopia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDResultadoBaciloscopia](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[Resultado1] [tinyint] NOT NULL,
	[Resultado2] [tinyint] NULL,
	[Resultado3] [tinyint] NULL,
 CONSTRAINT [PK_tblDResultadoBaciloscopia] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSeccion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSeccion](
	[IdSeccion] [int] NOT NULL,
	[IdMunicipio] [int] NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblSeccion] PRIMARY KEY CLUSTERED 
(
	[IdSeccion] ASC,
	[IdMunicipio] ASC,
	[IdProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSangre]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSangre](
	[IdSangre] [tinyint] NOT NULL,
	[Descripcion] [varchar](15) NULL,
 CONSTRAINT [PK_tblSangre] PRIMARY KEY CLUSTERED 
(
	[IdSangre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSerialesMaquinas]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSerialesMaquinas](
	[SerialId] [varchar](25) NOT NULL,
	[Instalado] [bit] NOT NULL,
	[Asignado] [bit] NOT NULL,
	[InstaladoPor] [varchar](100) NULL,
	[Comentario] [varchar](255) NULL,
	[FechaInstalado] [datetime] NULL,
	[FechaAsignado] [datetime] NULL,
 CONSTRAINT [PK_tblSerialesMaquinas] PRIMARY KEY CLUSTERED 
(
	[SerialId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSemanasEpidemiologicas]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSemanasEpidemiologicas](
	[IdSemana] [int] IDENTITY(1,1) NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[NoSemana] [int] NOT NULL,
	[Anio] [int] NOT NULL,
 CONSTRAINT [PK_tblSemanasEpidemiologicas] PRIMARY KEY CLUSTERED 
(
	[IdSemana] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSector]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSector](
	[IdSector] [int] NOT NULL,
	[IdSeccion] [int] NOT NULL,
	[IdMunicipio] [int] NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[CodigoSector] [varchar](8) NOT NULL,
 CONSTRAINT [PK_tblSector] PRIMARY KEY CLUSTERED 
(
	[IdSector] ASC,
	[IdSeccion] ASC,
	[IdMunicipio] ASC,
	[IdProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblServicioIntervencion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblServicioIntervencion](
	[IdServicioIntervencion] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblServicioIntervencion] PRIMARY KEY CLUSTERED 
(
	[IdServicioIntervencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblServicioActividad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblServicioActividad](
	[IdServicioIntervencion] [int] NOT NULL,
	[IdServicioActividad] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblServicioActividad] PRIMARY KEY CLUSTERED 
(
	[IdServicioActividad] ASC,
	[IdServicioIntervencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSintoma]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSintoma](
	[IdSintoma] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoSintoma] [int] NOT NULL,
	[Descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_tblSintoma] PRIMARY KEY CLUSTERED 
(
	[IdSintoma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPatologiaxPuerperio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPatologiaxPuerperio](
	[IdPuerperio] [int] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdPatologia] [int] NOT NULL,
	[Comentario] [varchar](1000) NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblPatologiaxPuerperio] PRIMARY KEY CLUSTERED 
(
	[IdPuerperio] ASC,
	[IdUNAP] ASC,
	[IdPaciente] ASC,
	[IdPatologia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMunicipio2010]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMunicipio2010](
	[IdProvincia2010] [char](2) NOT NULL,
	[IdMunicipio2010] [char](2) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblMunicipio2010] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC,
	[IdMunicipio2010] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMedico]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMedico](
	[IdMedico] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[Exequatur] [varchar](25) NULL,
	[IdTipoPersona] [int] NOT NULL,
	[NombreCompleto] [varchar](120) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[Cedula] [varchar](11) NOT NULL,
	[Pasaporte] [varchar](20) NULL,
 CONSTRAINT [PK_tblMedico] PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMNoAsistencial]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMNoAsistencial](
	[IdMNoAsistencial] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdIntervencion] [int] NULL,
	[IdActividad] [int] NULL,
	[IdTipoPersona] [int] NOT NULL,
	[Detalles] [varchar](1000) NULL,
	[Lugar] [varchar](200) NULL,
	[Fecha] [datetime] NOT NULL,
	[Conferencista] [varchar](60) NOT NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblMConferencia] PRIMARY KEY CLUSTERED 
(
	[IdMNoAsistencial] ASC,
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPaciente](
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[NSS] [varchar](10) NULL,
	[IdMiembroSIPS] [int] NULL,
	[NoHogarSIPS] [varchar](20) NULL,
	[IdParentezco] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono1] [varchar](13) NULL,
	[Telefono2] [varchar](13) NULL,
	[CorreoElectronico] [varchar](50) NULL,
	[IdGenero] [int] NOT NULL,
	[IdRaza] [int] NULL,
	[IdNacionalidad] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdOcupacion] [int] NULL,
	[IdReligion] [int] NULL,
	[IdARS] [int] NULL,
	[BeneficiarioSolidaridad] [bit] NOT NULL,
	[IdRegimen] [int] NULL,
	[Direccion] [varchar](250) NULL,
	[IdProvincia] [int] NULL,
	[IdMunicipio] [int] NULL,
	[IdMedico] [int] NOT NULL,
	[CodigoSector] [varchar](10) NULL,
	[NoFFamiliar] [varchar](20) NULL,
	[Referido] [bit] NOT NULL,
	[IdEscolaridad] [int] NULL,
	[IdCondicionActividad] [int] NULL,
	[idLote] [int] NOT NULL,
	[Documento] [varchar](20) NULL,
	[IdTipoDocumento] [int] NULL,
	[TarjetaNo] [varchar](16) NULL,
	[IdUnapAsociada] [int] NULL,
	[IdTipoPaciente] [int] NULL,
	[IdInstitucionMilitar] [int] NULL,
	[IdRangoMilitar] [int] NULL,
	[IdPacienteFamiliar] [bigint] NULL,
	[IdUnapFamiliar] [int] NULL,
	[IdCompaniaMilitar] [int] NULL,
	[IdSangre] [int] NULL,
	[FechaPadron] [datetime] NULL,
	[IdProvincia2010] [char](2) NULL,
	[IdMunicipio2010] [char](2) NULL,
	[IdDistritoMunicipal2010] [char](2) NULL,
	[IdSeccion2010] [char](2) NULL,
	[IdBarrio2010] [char](3) NULL,
	[IdSubBarrio2010] [char](2) NULL,
	[CodigoPAI] [varchar](20) NULL,
	[UNAPCentroVacunacion] [int] NULL,
 CONSTRAINT [PK_tblPaciente_1] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC,
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El catalogo TIPO_PAC almacena el valor equivalente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPaciente', @level2type=N'COLUMN',@level2name=N'IdTipoPaciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El catalogo INSTI_MIL almacena el valor equivalente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPaciente', @level2type=N'COLUMN',@level2name=N'IdInstitucionMilitar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El catalogo RANGO_MIL almacena el valor equivalente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPaciente', @level2type=N'COLUMN',@level2name=N'IdRangoMilitar'
GO
/****** Object:  Table [dbo].[tblDServicios]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDServicios](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdMServicio] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Puntuacion] [int] NULL,
 CONSTRAINT [PK_tblDServicios] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConferencista]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConferencista](
	[IdConferencista] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[Apellido] [varchar](60) NOT NULL,
	[Cedula] [varchar](20) NOT NULL,
	[IdTipoPersona] [int] NOT NULL,
 CONSTRAINT [PK_tblConferencista] PRIMARY KEY CLUSTERED 
(
	[IdConferencista] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRolPermiso]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRolPermiso](
	[idPermiso] [varchar](100) NOT NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [tblRolPermiso_PK] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC,
	[idRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsuario]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Contrasena] [varchar](50) NULL,
	[WindowsAuthencation] [bit] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaExpiracionPassword] [datetime] NOT NULL,
	[CorreoElectronico] [varchar](100) NULL,
	[Rol] [int] NULL,
	[IdMedico] [int] NULL,
 CONSTRAINT [tblUsuario_PK] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAntecedentes]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAntecedentes](
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdPatologia] [int] NOT NULL,
	[IdTipoPatologia] [int] NOT NULL,
	[Comentario] [varchar](500) NULL,
	[idLote] [int] NOT NULL,
 CONSTRAINT [PK_tblAntecedentes_1] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC,
	[IdUNAP] ASC,
	[IdPatologia] ASC,
	[IdTipoPatologia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHistoriaMujer]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHistoriaMujer](
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[Menarquia] [bit] NULL,
	[EdadMenarquia] [int] NULL,
	[EdadCoito] [int] NULL,
	[Menopausia] [bit] NULL,
	[EdadMenopausia] [int] NULL,
	[FechaUltimaMenst] [datetime] NULL,
	[FechaUltimoPAP] [datetime] NULL,
	[FrecuenciaMenst] [int] NULL,
	[DuracionMenst] [int] NULL,
	[CantParejas] [int] NULL,
	[Comentario] [varchar](1000) NULL,
	[idLote] [int] NOT NULL,
	[Gestas] [tinyint] NULL,
	[NingunoOMasDeTresPartos] [bit] NULL,
	[AlgunRecienNacidoMenorCincoLibras] [bit] NULL,
	[AlgunPrematuro] [bit] NULL,
	[Gemerales] [bit] NULL,
	[Abortos] [tinyint] NULL,
	[Partos] [tinyint] NULL,
	[Vaginales] [tinyint] NULL,
	[Cesareas] [tinyint] NULL,
	[NacidosVivos] [tinyint] NULL,
	[NacidosMuertos] [tinyint] NULL,
	[Vivos] [tinyint] NULL,
	[MuertosPrimeraSemana] [tinyint] NULL,
	[MuertosDespuesPrimeraSemana] [tinyint] NULL,
	[RecienNacidoConMayorPeso] [decimal](18, 2) NULL,
	[FechaUltimoEmbarazo] [datetime] NULL,
 CONSTRAINT [PK_tblHistoriaMujer_1] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC,
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHabitatPaciente]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHabitatPaciente](
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdMServicio] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[idLote] [int] NOT NULL,
 CONSTRAINT [PK_tblHabitatPaciente_1] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC,
	[IdUNAP] ASC,
	[IdMServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPacienteVacuna]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPacienteVacuna](
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdVacuna] [int] NOT NULL,
	[Fecha1raDosis] [datetime] NULL,
	[Fecha2daDosis] [datetime] NULL,
	[Fecha3raDosis] [datetime] NULL,
	[Fecha1erRefuerzo] [datetime] NULL,
	[Fecha2doRefuerzo] [datetime] NULL,
	[idLote] [int] NOT NULL,
 CONSTRAINT [PK_tblPacienteVacuna_1] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC,
	[IdUNAP] ASC,
	[IdVacuna] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMEmbarazo]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMEmbarazo](
	[IdMEmbarazo] [bigint] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FechaUltMenst] [datetime] NULL,
	[FechaUltMenstDesconocida] [bit] NULL,
	[PesoPrevioEmbarazo] [int] NULL,
	[FechaProblableParto] [datetime] NULL,
	[Antitetanica] [tinyint] NULL,
	[Antirubeola] [tinyint] NULL,
	[SensGamaGlob] [bit] NULL,
	[ExOdontNormal] [bit] NULL,
	[ExPAPNormal] [bit] NULL,
	[ExCervixNormal] [bit] NULL,
	[ExPelvisNormal] [bit] NULL,
	[VDRL] [bit] NULL,
	[FechaVDRL] [datetime] NULL,
	[ExHIV] [bit] NULL,
	[FechaHIV] [datetime] NULL,
	[Finalizado] [bit] NOT NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblMEmbarazo_1] PRIMARY KEY CLUSTERED 
(
	[IdMEmbarazo] ASC,
	[IdPaciente] ASC,
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMedicoEspecialidad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMedicoEspecialidad](
	[IdMedico] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
 CONSTRAINT [PK_tblMedicoEspecialidad] PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC,
	[IdEspecialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDNoAsistencial]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDNoAsistencial](
	[IdMNoAsistencial] [bigint] NOT NULL,
	[IdParticipante] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblDNoAsistencial] PRIMARY KEY CLUSTERED 
(
	[IdMNoAsistencial] ASC,
	[IdParticipante] ASC,
	[IdUNAP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDistritoMunicipal2010]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDistritoMunicipal2010](
	[IdProvincia2010] [char](2) NOT NULL,
	[IdMunicipio2010] [char](2) NOT NULL,
	[IdDistritoMunicipal2010] [char](2) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblDistritoMunicipal2010] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC,
	[IdMunicipio2010] ASC,
	[IdDistritoMunicipal2010] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblReferencia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReferencia](
	[IdReferencia] [int] NOT NULL,
	[FechaReferencia] [datetime] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdUnap] [int] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[CentroReferencia] [int] NOT NULL,
	[MotivoReferencia] [varchar](1000) NOT NULL,
	[ResultadosPruebas] [varchar](1000) NULL,
	[DiagnosticoPresuntivo] [varchar](1000) NULL,
	[TratamientoRealizado] [varchar](1000) NULL,
	[Contrareferido] [bit] NOT NULL,
	[idLote] [int] NOT NULL,
	[IdUnapCreacion] [int] NULL,
 CONSTRAINT [PK_tblReferencia] PRIMARY KEY CLUSTERED 
(
	[IdReferencia] ASC,
	[IdPaciente] ASC,
	[IdUnap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblServicioSubActividad]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblServicioSubActividad](
	[IdServicioIntervencion] [int] NOT NULL,
	[IdServicioActividad] [int] NOT NULL,
	[IdSubActividad] [varchar](3) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdCodigoSubActividad] [int] IDENTITY(247,1) NOT NULL,
 CONSTRAINT [PK_tblServicioSubActividad] PRIMARY KEY CLUSTERED 
(
	[IdCodigoSubActividad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSeccion2010]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSeccion2010](
	[IdProvincia2010] [char](2) NOT NULL,
	[IdMunicipio2010] [char](2) NOT NULL,
	[IdDistritoMunicipal2010] [char](2) NOT NULL,
	[IdSeccion2010] [char](2) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblSeccion2010] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC,
	[IdMunicipio2010] ASC,
	[IdDistritoMunicipal2010] ASC,
	[IdSeccion2010] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRolUsuario]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRolUsuario](
	[idUsuario] [int] NOT NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [tblRolUsuario_PK] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblContraReferencia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContraReferencia](
	[IdContraReferencia] [int] NOT NULL,
	[IdReferencia] [int] NOT NULL,
	[IdUnap] [int] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[ResultadosPruebasCompletadas] [varchar](1000) NOT NULL,
	[DiagnosticoFinal] [varchar](1000) NULL,
	[TratamientoRealizado] [varchar](1000) NULL,
	[Recomendaciones] [varchar](1000) NULL,
	[MedicoQueAsistio] [varchar](1000) NOT NULL,
	[Exequatur] [varchar](20) NULL,
	[IdLote] [int] NOT NULL,
	[IdUnapCreacion] [int] NULL,
 CONSTRAINT [PK_tblContraReferencia] PRIMARY KEY CLUSTERED 
(
	[IdContraReferencia] ASC,
	[IdReferencia] ASC,
	[IdUnap] ASC,
	[IdPaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBarrio2010]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBarrio2010](
	[IdProvincia2010] [char](2) NOT NULL,
	[IdMunicipio2010] [char](2) NOT NULL,
	[IdDistritoMunicipal2010] [char](2) NOT NULL,
	[IdSeccion2010] [char](2) NOT NULL,
	[IdBarrio2010] [char](3) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblBarrio2010] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC,
	[IdMunicipio2010] ASC,
	[IdDistritoMunicipal2010] ASC,
	[IdSeccion2010] ASC,
	[IdBarrio2010] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSubBarrio2010]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubBarrio2010](
	[IdProvincia2010] [char](2) NOT NULL,
	[IdMunicipio2010] [char](2) NOT NULL,
	[IdDistritoMunicipal2010] [char](2) NOT NULL,
	[IdSeccion2010] [char](2) NOT NULL,
	[IdBarrio2010] [char](3) NOT NULL,
	[IdSubBarrio2010] [char](2) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblSubBarrio2010] PRIMARY KEY CLUSTERED 
(
	[IdProvincia2010] ASC,
	[IdMunicipio2010] ASC,
	[IdDistritoMunicipal2010] ASC,
	[IdSeccion2010] ASC,
	[IdBarrio2010] ASC,
	[IdSubBarrio2010] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsulta](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[FechaConsulta] [datetime] NOT NULL,
	[TipoEmergencia] [bit] NOT NULL,
	[IdTipoConsulta] [int] NOT NULL,
	[Finalizada] [bit] NOT NULL,
	[IdUNAPRealizoConsulta] [int] NOT NULL,
	[PrincipioPadecimiento] [varchar](1000) NULL,
	[EvolucionPadecimiento] [varchar](1000) NULL,
	[EstadoActualPadecimiento] [varchar](1000) NULL,
	[FC] [varchar](50) NULL,
	[TA] [varchar](50) NULL,
	[FR] [varchar](50) NULL,
	[Temperatura] [varchar](50) NULL,
	[Peso] [int] NULL,
	[ExploracionGeneral] [varchar](1000) NULL,
	[Comentario] [varchar](1000) NULL,
	[Pronostico] [varchar](1000) NULL,
	[Tratamiento] [varchar](1000) NULL,
	[Talla] [int] NULL,
	[EdadMeses] [int] NULL,
	[TipoSangre] [varchar](2) NULL,
	[FactorRH] [bit] NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblConsulta] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Talla del paciente almacenada en pulgadas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblConsulta', @level2type=N'COLUMN',@level2name=N'Talla'
GO
/****** Object:  Table [dbo].[tblDPuerperio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDPuerperio](
	[IdPuerperio] [int] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[PresionArterialSistole] [int] NULL,
	[PresionArterialDiastole] [int] NULL,
	[FrecuenciaCardiaca] [int] NULL,
	[Temperatura] [int] NULL,
	[InvolucionUterina] [varchar](1000) NULL,
	[Loquios] [varchar](1000) NULL,
	[Comentario] [varchar](1000) NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblDPuerperio] PRIMARY KEY CLUSTERED 
(
	[IdPuerperio] ASC,
	[IdUNAP] ASC,
	[IdPaciente] ASC,
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDEmbarazo]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDEmbarazo](
	[IdMEmbarazo] [bigint] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NOT NULL,
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[SemanasEmbarazo1] [numeric](18, 1) NULL,
	[SemanasEmbarazo2] [numeric](18, 1) NULL,
	[Peso] [int] NULL,
	[PresionArterial] [varchar](10) NULL,
	[AlturaUterina] [int] NULL,
	[FrecCardFeto] [int] NULL,
	[PresentacionFeto] [int] NULL,
	[MovFetal] [tinyint] NULL,
	[Bacteriuria] [tinyint] NULL,
	[Proteriuria] [tinyint] NULL,
	[Folato] [bit] NULL,
	[Hierro] [bit] NULL,
	[IdLote] [int] NOT NULL,
 CONSTRAINT [PK_tblDEmbarazo_1] PRIMARY KEY CLUSTERED 
(
	[IdMEmbarazo] ASC,
	[IdPaciente] ASC,
	[IdUNAP] ASC,
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultaSintomas]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultaSintomas](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[idSintoma] [int] NOT NULL,
	[Comentario] [varchar](1000) NULL,
 CONSTRAINT [PK_tblConsultaSintomas_1] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC,
	[idSintoma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultaServiciosPrestados]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConsultaServiciosPrestados](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdCodigoSubActividad] [int] NOT NULL,
 CONSTRAINT [PK_tblConsultaServiciosPrestados_1] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC,
	[IdCodigoSubActividad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConsultaExploracion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultaExploracion](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdExploracion] [int] NOT NULL,
	[Comentario] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_tblConsultaExploracion_1] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC,
	[IdExploracion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultaPruebaLaboratorio]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConsultaPruebaLaboratorio](
	[IdPruebaLaboratorio] [int] NOT NULL,
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
 CONSTRAINT [PK_tblConsultaPruebaLaboratorio_1] PRIMARY KEY CLUSTERED 
(
	[IdPruebaLaboratorio] ASC,
	[IdConsulta] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConsultaPrescripcion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultaPrescripcion](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdMedicamento] [int] NOT NULL,
	[Comentario] [varchar](1000) NULL,
 CONSTRAINT [PK_tblConsultaPrescripcion] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedicamento] ASC,
	[IdMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultaPatologia]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultaPatologia](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdPatologia] [int] NOT NULL,
	[Comentario] [varchar](1000) NULL,
	[Presuntiva] [bit] NULL,
	[Definitiva] [bit] NULL,
 CONSTRAINT [PK_tblConsultaPatologia_1] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC,
	[IdPatologia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultaIntervencion]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultaIntervencion](
	[IdConsulta] [bigint] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdIntervencion] [int] NOT NULL,
	[Comentario] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_tblConsultaIntervencion_1] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC,
	[IdMedico] ASC,
	[IdIntervencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCitaMedica]    Script Date: 04/15/2019 18:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCitaMedica](
	[IdCita] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdPaciente] [bigint] NOT NULL,
	[IdUNAP] [int] NULL,
	[IdConsultaAsociada] [bigint] NULL,
	[IdMedico] [int] NULL,
	[IdTipoConsulta] [int] NULL,
	[IdTipoPersona] [int] NULL,
	[FechaCita] [datetime] NOT NULL,
	[Cancelada] [bit] NOT NULL,
	[Expirada] [bit] NOT NULL,
	[Comentario] [varchar](1000) NULL,
	[idLote] [int] NOT NULL,
	[Estado] [bit] NULL,
	[EstadoAsistencia] [int] NULL,
	[IdUnapCreadora] [int] NULL,
 CONSTRAINT [PK_tblCitaMedica] PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el paciente asistio o no a la cita medica, Consultar detalle en el catalogo CITA_ASIST' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblCitaMedica', @level2type=N'COLUMN',@level2name=N'EstadoAsistencia'
GO
/****** Object:  Default [DF_tblAdvertenciaPatologia_GeneraAdvertencia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblAdvertenciaPatologia] ADD  CONSTRAINT [DF_tblAdvertenciaPatologia_GeneraAdvertencia]  DEFAULT ((1)) FOR [GeneraAdvertencia]
GO
/****** Object:  Default [DF_tblAntecedentes_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblAntecedentes] ADD  CONSTRAINT [DF_tblAntecedentes_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblCitaMedica_Fecha]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica] ADD  CONSTRAINT [DF_tblCitaMedica_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
/****** Object:  Default [DF_tblCitaMedica_Vencida]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica] ADD  CONSTRAINT [DF_tblCitaMedica_Vencida]  DEFAULT ((0)) FOR [Cancelada]
GO
/****** Object:  Default [DF_tblCitaMedica_Expirada]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica] ADD  CONSTRAINT [DF_tblCitaMedica_Expirada]  DEFAULT ((0)) FOR [Expirada]
GO
/****** Object:  Default [DF_tblCitaMedica_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica] ADD  CONSTRAINT [DF_tblCitaMedica_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblCitaMedica_EstadoAsistencia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica] ADD  CONSTRAINT [DF_tblCitaMedica_EstadoAsistencia]  DEFAULT ((1)) FOR [EstadoAsistencia]
GO
/****** Object:  Default [DF_tblConsulta_Emergencia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta] ADD  CONSTRAINT [DF_tblConsulta_Emergencia]  DEFAULT ((0)) FOR [TipoEmergencia]
GO
/****** Object:  Default [DF_tblConsulta_Finalizada]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta] ADD  CONSTRAINT [DF_tblConsulta_Finalizada]  DEFAULT ((0)) FOR [Finalizada]
GO
/****** Object:  Default [DF_tblConsulta_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta] ADD  CONSTRAINT [DF_tblConsulta_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblConsultaPatologia_Presuntiva]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPatologia] ADD  CONSTRAINT [DF_tblConsultaPatologia_Presuntiva]  DEFAULT ((0)) FOR [Presuntiva]
GO
/****** Object:  Default [DF_tblConsultaPatologia_Definitiva]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPatologia] ADD  CONSTRAINT [DF_tblConsultaPatologia_Definitiva]  DEFAULT ((1)) FOR [Definitiva]
GO
/****** Object:  Default [DF_tblContraReferencia_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblContraReferencia] ADD  CONSTRAINT [DF_tblContraReferencia_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblDEmbarazo_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDEmbarazo] ADD  CONSTRAINT [DF_tblDEmbarazo_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblDNoAsistencial_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDNoAsistencial] ADD  CONSTRAINT [DF_tblDNoAsistencial_idLote]  DEFAULT ((0)) FOR [IdUNAP]
GO
/****** Object:  Default [DF_tblDNoAsistencial_IdLote_1]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDNoAsistencial] ADD  CONSTRAINT [DF_tblDNoAsistencial_IdLote_1]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblDPuerperio_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDPuerperio] ADD  CONSTRAINT [DF_tblDPuerperio_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblEquiposUbicacion_ConectadoRed]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblEquiposUbicacion] ADD  CONSTRAINT [DF_tblEquiposUbicacion_ConectadoRed]  DEFAULT ((1)) FOR [ConectadoRed]
GO
/****** Object:  Default [DF_tblHabitatPaciente_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblHabitatPaciente] ADD  CONSTRAINT [DF_tblHabitatPaciente_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblHistoriaMujer_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblHistoriaMujer] ADD  CONSTRAINT [DF_tblHistoriaMujer_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblMEmbarazo_Finalizado]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMEmbarazo] ADD  CONSTRAINT [DF_tblMEmbarazo_Finalizado]  DEFAULT ((0)) FOR [Finalizado]
GO
/****** Object:  Default [DF_tblMEmbarazo_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMEmbarazo] ADD  CONSTRAINT [DF_tblMEmbarazo_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblMNoAsistencial_IdLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMNoAsistencial] ADD  CONSTRAINT [DF_tblMNoAsistencial_IdLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblPaciente_BeneficiarioSolidaridad]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente] ADD  CONSTRAINT [DF_tblPaciente_BeneficiarioSolidaridad]  DEFAULT ((0)) FOR [BeneficiarioSolidaridad]
GO
/****** Object:  Default [DF_tblPaciente_Referido]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente] ADD  CONSTRAINT [DF_tblPaciente_Referido]  DEFAULT ((0)) FOR [Referido]
GO
/****** Object:  Default [DF_tblPaciente_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente] ADD  CONSTRAINT [DF_tblPaciente_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblPaciente_IdTipoPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente] ADD  CONSTRAINT [DF_tblPaciente_IdTipoPaciente]  DEFAULT ((1)) FOR [IdTipoPaciente]
GO
/****** Object:  Default [DF_tblPaciente_IdSangre]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente] ADD  CONSTRAINT [DF_tblPaciente_IdSangre]  DEFAULT ((0)) FOR [IdSangre]
GO
/****** Object:  Default [DF_tblPacienteVacuna_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPacienteVacuna] ADD  CONSTRAINT [DF_tblPacienteVacuna_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblParticipante_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblParticipante] ADD  CONSTRAINT [DF_tblParticipante_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblPatologia_TipoPatologia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPatologia] ADD  CONSTRAINT [DF_tblPatologia_TipoPatologia]  DEFAULT ((0)) FOR [IdTipoPatologia]
GO
/****** Object:  Default [DF_tblPatologiaxPuerperio_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPatologiaxPuerperio] ADD  CONSTRAINT [DF_tblPatologiaxPuerperio_idLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblPuerpuerio_Cerrado]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPuerpuerio] ADD  CONSTRAINT [DF_tblPuerpuerio_Cerrado]  DEFAULT ((0)) FOR [Cerrado]
GO
/****** Object:  Default [DF_tblPuerpuerio_FechaConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPuerpuerio] ADD  CONSTRAINT [DF_tblPuerpuerio_FechaConsulta]  DEFAULT (getdate()) FOR [FechaConsulta]
GO
/****** Object:  Default [DF_tblPuerpuerio_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPuerpuerio] ADD  CONSTRAINT [DF_tblPuerpuerio_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblReferencia_Contrareferido]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblReferencia] ADD  CONSTRAINT [DF_tblReferencia_Contrareferido]  DEFAULT ((0)) FOR [Contrareferido]
GO
/****** Object:  Default [DF_tblReferencia_idLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblReferencia] ADD  CONSTRAINT [DF_tblReferencia_idLote]  DEFAULT ((0)) FOR [idLote]
GO
/****** Object:  Default [DF_tblSerialesMaquinas_Asignado]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblSerialesMaquinas] ADD  CONSTRAINT [DF_tblSerialesMaquinas_Asignado]  DEFAULT ((0)) FOR [Instalado]
GO
/****** Object:  Default [DF_tblSerialesMaquinas_Asignado_1]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblSerialesMaquinas] ADD  CONSTRAINT [DF_tblSerialesMaquinas_Asignado_1]  DEFAULT ((0)) FOR [Asignado]
GO
/****** Object:  Default [DF_tblVacuna_MesesDosis1]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacuna] ADD  CONSTRAINT [DF_tblVacuna_MesesDosis1]  DEFAULT ((0)) FOR [MesesDosis1]
GO
/****** Object:  Default [DF_tblVacuna_MesesDosis2]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacuna] ADD  CONSTRAINT [DF_tblVacuna_MesesDosis2]  DEFAULT ('N/A') FOR [MesesDosis2]
GO
/****** Object:  Default [DF_tblVacuna_MesesDosis3]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacuna] ADD  CONSTRAINT [DF_tblVacuna_MesesDosis3]  DEFAULT ('N/A') FOR [MesesDosis3]
GO
/****** Object:  Default [DF_tblVacuna_MesesDosis4]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacuna] ADD  CONSTRAINT [DF_tblVacuna_MesesDosis4]  DEFAULT ('N/A') FOR [MesesDosis4]
GO
/****** Object:  Default [DF_tblVacuna_MesesDosis5]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacuna] ADD  CONSTRAINT [DF_tblVacuna_MesesDosis5]  DEFAULT ('N/A') FOR [MesesDosis5]
GO
/****** Object:  Default [DF__tblVacuna__IdLot__2E9C95DD]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacunaDosis] ADD  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF__tblVacuna__IdCol__2F90BA16]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacunaDosis] ADD  DEFAULT ((0)) FOR [IdColor]
GO
/****** Object:  Default [DF__tblVacuna__IdLot__2BC02932]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVacunas] ADD  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  Default [DF_tblVisitaDominiciliaria_IdLote]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblVisitaDomiciliaria] ADD  CONSTRAINT [DF_tblVisitaDominiciliaria_IdLote]  DEFAULT ((0)) FOR [IdLote]
GO
/****** Object:  ForeignKey [FK_tblAntecedentes_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblAntecedentes]  WITH CHECK ADD  CONSTRAINT [FK_tblAntecedentes_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblAntecedentes] CHECK CONSTRAINT [FK_tblAntecedentes_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblAntecedentes_tblPatologia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblAntecedentes]  WITH CHECK ADD  CONSTRAINT [FK_tblAntecedentes_tblPatologia] FOREIGN KEY([IdPatologia])
REFERENCES [dbo].[tblPatologia] ([IdPatologia])
GO
ALTER TABLE [dbo].[tblAntecedentes] CHECK CONSTRAINT [FK_tblAntecedentes_tblPatologia]
GO
/****** Object:  ForeignKey [FK_tblAntecedentes_tblTipoPatologia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblAntecedentes]  WITH NOCHECK ADD  CONSTRAINT [FK_tblAntecedentes_tblTipoPatologia] FOREIGN KEY([IdTipoPatologia])
REFERENCES [dbo].[tblTipoPatologia] ([IdTipoPatologia])
GO
ALTER TABLE [dbo].[tblAntecedentes] CHECK CONSTRAINT [FK_tblAntecedentes_tblTipoPatologia]
GO
/****** Object:  ForeignKey [FK_tblBarrio2010_tblSeccion2010]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblBarrio2010]  WITH CHECK ADD  CONSTRAINT [FK_tblBarrio2010_tblSeccion2010] FOREIGN KEY([IdProvincia2010], [IdMunicipio2010], [IdDistritoMunicipal2010], [IdSeccion2010])
REFERENCES [dbo].[tblSeccion2010] ([IdProvincia2010], [IdMunicipio2010], [IdDistritoMunicipal2010], [IdSeccion2010])
GO
ALTER TABLE [dbo].[tblBarrio2010] CHECK CONSTRAINT [FK_tblBarrio2010_tblSeccion2010]
GO
/****** Object:  ForeignKey [FK_tblCitaMedica_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_tblCitaMedica_tblConsulta] FOREIGN KEY([IdConsultaAsociada], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblCitaMedica] CHECK CONSTRAINT [FK_tblCitaMedica_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblCitaMedica_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_tblCitaMedica_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblCitaMedica] CHECK CONSTRAINT [FK_tblCitaMedica_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblCitaMedica_tblTipoConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica]  WITH NOCHECK ADD  CONSTRAINT [FK_tblCitaMedica_tblTipoConsulta] FOREIGN KEY([IdTipoConsulta])
REFERENCES [dbo].[tblTipoConsulta] ([IdTipoConsulta])
GO
ALTER TABLE [dbo].[tblCitaMedica] CHECK CONSTRAINT [FK_tblCitaMedica_tblTipoConsulta]
GO
/****** Object:  ForeignKey [FK_tblCitaMedica_tblTipoPersona]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblCitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_tblCitaMedica_tblTipoPersona] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[tblTipoPersona] ([IdTipoPersona])
GO
ALTER TABLE [dbo].[tblCitaMedica] CHECK CONSTRAINT [FK_tblCitaMedica_tblTipoPersona]
GO
/****** Object:  ForeignKey [FK_tblConferencista_tblTipoPersona]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConferencista]  WITH CHECK ADD  CONSTRAINT [FK_tblConferencista_tblTipoPersona] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[tblTipoPersona] ([IdTipoPersona])
GO
ALTER TABLE [dbo].[tblConferencista] CHECK CONSTRAINT [FK_tblConferencista_tblTipoPersona]
GO
/****** Object:  ForeignKey [FK_tblConsulta_tblMedico1]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta]  WITH CHECK ADD  CONSTRAINT [FK_tblConsulta_tblMedico1] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[tblMedico] ([IdMedico])
GO
ALTER TABLE [dbo].[tblConsulta] CHECK CONSTRAINT [FK_tblConsulta_tblMedico1]
GO
/****** Object:  ForeignKey [FK_tblConsulta_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta]  WITH CHECK ADD  CONSTRAINT [FK_tblConsulta_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblConsulta] CHECK CONSTRAINT [FK_tblConsulta_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblConsulta_tblTipoConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta]  WITH CHECK ADD  CONSTRAINT [FK_tblConsulta_tblTipoConsulta] FOREIGN KEY([IdTipoConsulta])
REFERENCES [dbo].[tblTipoConsulta] ([IdTipoConsulta])
GO
ALTER TABLE [dbo].[tblConsulta] CHECK CONSTRAINT [FK_tblConsulta_tblTipoConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsulta_tblUNAP]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsulta]  WITH CHECK ADD  CONSTRAINT [FK_tblConsulta_tblUNAP] FOREIGN KEY([IdUNAP])
REFERENCES [dbo].[tblUNAP] ([IdUNAP])
GO
ALTER TABLE [dbo].[tblConsulta] CHECK CONSTRAINT [FK_tblConsulta_tblUNAP]
GO
/****** Object:  ForeignKey [FK_tblConsultaExploracion_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaExploracion]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaExploracion_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaExploracion] CHECK CONSTRAINT [FK_tblConsultaExploracion_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaExploracion_tblExploracion]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaExploracion]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaExploracion_tblExploracion] FOREIGN KEY([IdExploracion])
REFERENCES [dbo].[tblExploracion] ([IdExploracion])
GO
ALTER TABLE [dbo].[tblConsultaExploracion] CHECK CONSTRAINT [FK_tblConsultaExploracion_tblExploracion]
GO
/****** Object:  ForeignKey [FK_tblConsultaIntervencion_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaIntervencion]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaIntervencion_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaIntervencion] CHECK CONSTRAINT [FK_tblConsultaIntervencion_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaIntervencion_tblIntervencion]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaIntervencion]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaIntervencion_tblIntervencion] FOREIGN KEY([IdIntervencion])
REFERENCES [dbo].[tblIntervencion] ([IdIntervencion])
GO
ALTER TABLE [dbo].[tblConsultaIntervencion] CHECK CONSTRAINT [FK_tblConsultaIntervencion_tblIntervencion]
GO
/****** Object:  ForeignKey [FK_tblConsultaPatologia_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPatologia]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaPatologia_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaPatologia] CHECK CONSTRAINT [FK_tblConsultaPatologia_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaPrescripcion_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPrescripcion]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaPrescripcion_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaPrescripcion] CHECK CONSTRAINT [FK_tblConsultaPrescripcion_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaPrescripcion_tblMedicamento]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPrescripcion]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaPrescripcion_tblMedicamento] FOREIGN KEY([IdMedicamento])
REFERENCES [dbo].[tblMedicamento] ([IdMedicamento])
GO
ALTER TABLE [dbo].[tblConsultaPrescripcion] CHECK CONSTRAINT [FK_tblConsultaPrescripcion_tblMedicamento]
GO
/****** Object:  ForeignKey [FK_tblConsultaPruebaLaboratorio_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPruebaLaboratorio]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaPruebaLaboratorio_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaPruebaLaboratorio] CHECK CONSTRAINT [FK_tblConsultaPruebaLaboratorio_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaPruebaLaboratorio_tblPruebaLaboratorio]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaPruebaLaboratorio]  WITH NOCHECK ADD  CONSTRAINT [FK_tblConsultaPruebaLaboratorio_tblPruebaLaboratorio] FOREIGN KEY([IdPruebaLaboratorio])
REFERENCES [dbo].[tblPruebaLaboratorio] ([IdPruebaLaboratorio])
GO
ALTER TABLE [dbo].[tblConsultaPruebaLaboratorio] CHECK CONSTRAINT [FK_tblConsultaPruebaLaboratorio_tblPruebaLaboratorio]
GO
/****** Object:  ForeignKey [FK_tblConsultaServiciosPrestados_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaServiciosPrestados]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaServiciosPrestados_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaServiciosPrestados] CHECK CONSTRAINT [FK_tblConsultaServiciosPrestados_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaServiciosPrestados_tblServicioSubActividad]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaServiciosPrestados]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaServiciosPrestados_tblServicioSubActividad] FOREIGN KEY([IdCodigoSubActividad])
REFERENCES [dbo].[tblServicioSubActividad] ([IdCodigoSubActividad])
GO
ALTER TABLE [dbo].[tblConsultaServiciosPrestados] CHECK CONSTRAINT [FK_tblConsultaServiciosPrestados_tblServicioSubActividad]
GO
/****** Object:  ForeignKey [FK_tblConsultaSintomas_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaSintomas]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaSintomas_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblConsultaSintomas] CHECK CONSTRAINT [FK_tblConsultaSintomas_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblConsultaSintomas_tblSintoma]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblConsultaSintomas]  WITH CHECK ADD  CONSTRAINT [FK_tblConsultaSintomas_tblSintoma] FOREIGN KEY([idSintoma])
REFERENCES [dbo].[tblSintoma] ([IdSintoma])
GO
ALTER TABLE [dbo].[tblConsultaSintomas] CHECK CONSTRAINT [FK_tblConsultaSintomas_tblSintoma]
GO
/****** Object:  ForeignKey [FK_tblContraReferencia_tblReferencia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblContraReferencia]  WITH CHECK ADD  CONSTRAINT [FK_tblContraReferencia_tblReferencia] FOREIGN KEY([IdReferencia], [IdPaciente], [IdUnap])
REFERENCES [dbo].[tblReferencia] ([IdReferencia], [IdPaciente], [IdUnap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblContraReferencia] CHECK CONSTRAINT [FK_tblContraReferencia_tblReferencia]
GO
/****** Object:  ForeignKey [FK_tblDEmbarazo_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDEmbarazo]  WITH CHECK ADD  CONSTRAINT [FK_tblDEmbarazo_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblDEmbarazo] CHECK CONSTRAINT [FK_tblDEmbarazo_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblDEmbarazo_tblMEmbarazo]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDEmbarazo]  WITH CHECK ADD  CONSTRAINT [FK_tblDEmbarazo_tblMEmbarazo] FOREIGN KEY([IdMEmbarazo], [IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblMEmbarazo] ([IdMEmbarazo], [IdPaciente], [IdUNAP])
GO
ALTER TABLE [dbo].[tblDEmbarazo] CHECK CONSTRAINT [FK_tblDEmbarazo_tblMEmbarazo]
GO
/****** Object:  ForeignKey [FK_tblDistritoMunicipal2010_tblMunicipio2010]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDistritoMunicipal2010]  WITH CHECK ADD  CONSTRAINT [FK_tblDistritoMunicipal2010_tblMunicipio2010] FOREIGN KEY([IdProvincia2010], [IdMunicipio2010])
REFERENCES [dbo].[tblMunicipio2010] ([IdProvincia2010], [IdMunicipio2010])
GO
ALTER TABLE [dbo].[tblDistritoMunicipal2010] CHECK CONSTRAINT [FK_tblDistritoMunicipal2010_tblMunicipio2010]
GO
/****** Object:  ForeignKey [FK_tblDNoAsistencial_tblMNoAsistencial]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDNoAsistencial]  WITH CHECK ADD  CONSTRAINT [FK_tblDNoAsistencial_tblMNoAsistencial] FOREIGN KEY([IdMNoAsistencial], [IdUNAP])
REFERENCES [dbo].[tblMNoAsistencial] ([IdMNoAsistencial], [IdUNAP])
GO
ALTER TABLE [dbo].[tblDNoAsistencial] CHECK CONSTRAINT [FK_tblDNoAsistencial_tblMNoAsistencial]
GO
/****** Object:  ForeignKey [FK_tblDNoAsistencial_tblPartipante]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDNoAsistencial]  WITH CHECK ADD  CONSTRAINT [FK_tblDNoAsistencial_tblPartipante] FOREIGN KEY([IdParticipante])
REFERENCES [dbo].[tblParticipante] ([IdParticipante])
GO
ALTER TABLE [dbo].[tblDNoAsistencial] CHECK CONSTRAINT [FK_tblDNoAsistencial_tblPartipante]
GO
/****** Object:  ForeignKey [FK_tblDPuerperio_tblConsulta]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDPuerperio]  WITH CHECK ADD  CONSTRAINT [FK_tblDPuerperio_tblConsulta] FOREIGN KEY([IdConsulta], [IdMedico])
REFERENCES [dbo].[tblConsulta] ([IdConsulta], [IdMedico])
GO
ALTER TABLE [dbo].[tblDPuerperio] CHECK CONSTRAINT [FK_tblDPuerperio_tblConsulta]
GO
/****** Object:  ForeignKey [FK_tblDServicios_tblMServicios]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblDServicios]  WITH CHECK ADD  CONSTRAINT [FK_tblDServicios_tblMServicios] FOREIGN KEY([IdMServicio])
REFERENCES [dbo].[tblMServicios] ([IdMServicio])
GO
ALTER TABLE [dbo].[tblDServicios] CHECK CONSTRAINT [FK_tblDServicios_tblMServicios]
GO
/****** Object:  ForeignKey [FK_tblHabitatPaciente_tblDServicios]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblHabitatPaciente]  WITH NOCHECK ADD  CONSTRAINT [FK_tblHabitatPaciente_tblDServicios] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[tblDServicios] ([IdServicio])
GO
ALTER TABLE [dbo].[tblHabitatPaciente] CHECK CONSTRAINT [FK_tblHabitatPaciente_tblDServicios]
GO
/****** Object:  ForeignKey [FK_tblHabitatPaciente_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblHabitatPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tblHabitatPaciente_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHabitatPaciente] CHECK CONSTRAINT [FK_tblHabitatPaciente_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblHistoriaMujer_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblHistoriaMujer]  WITH CHECK ADD  CONSTRAINT [FK_tblHistoriaMujer_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHistoriaMujer] CHECK CONSTRAINT [FK_tblHistoriaMujer_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblMedico_tblEspecialidadMedica]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMedico]  WITH CHECK ADD  CONSTRAINT [FK_tblMedico_tblEspecialidadMedica] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[tblEspecialidadMedica] ([IdEspecialidadMedica])
GO
ALTER TABLE [dbo].[tblMedico] CHECK CONSTRAINT [FK_tblMedico_tblEspecialidadMedica]
GO
/****** Object:  ForeignKey [FK_tblMedico_tblTipoPersona]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMedico]  WITH CHECK ADD  CONSTRAINT [FK_tblMedico_tblTipoPersona] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[tblTipoPersona] ([IdTipoPersona])
GO
ALTER TABLE [dbo].[tblMedico] CHECK CONSTRAINT [FK_tblMedico_tblTipoPersona]
GO
/****** Object:  ForeignKey [FK_tblMedicoEspecialidad_tblEspecialidadMedica]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_tblMedicoEspecialidad_tblEspecialidadMedica] FOREIGN KEY([IdEspecialidad])
REFERENCES [dbo].[tblEspecialidadMedica] ([IdEspecialidadMedica])
GO
ALTER TABLE [dbo].[tblMedicoEspecialidad] CHECK CONSTRAINT [FK_tblMedicoEspecialidad_tblEspecialidadMedica]
GO
/****** Object:  ForeignKey [FK_tblMedicoEspecialidad_tblMedicoEspecialidad]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_tblMedicoEspecialidad_tblMedicoEspecialidad] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[tblMedico] ([IdMedico])
GO
ALTER TABLE [dbo].[tblMedicoEspecialidad] CHECK CONSTRAINT [FK_tblMedicoEspecialidad_tblMedicoEspecialidad]
GO
/****** Object:  ForeignKey [FK_tblMEmbarazo_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMEmbarazo]  WITH CHECK ADD  CONSTRAINT [FK_tblMEmbarazo_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMEmbarazo] CHECK CONSTRAINT [FK_tblMEmbarazo_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblMConferencia_tblActividad]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMNoAsistencial]  WITH CHECK ADD  CONSTRAINT [FK_tblMConferencia_tblActividad] FOREIGN KEY([IdActividad])
REFERENCES [dbo].[tblActividad] ([IdActividad])
GO
ALTER TABLE [dbo].[tblMNoAsistencial] CHECK CONSTRAINT [FK_tblMConferencia_tblActividad]
GO
/****** Object:  ForeignKey [FK_tblMConferencia_tblIntervencion]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMNoAsistencial]  WITH CHECK ADD  CONSTRAINT [FK_tblMConferencia_tblIntervencion] FOREIGN KEY([IdIntervencion])
REFERENCES [dbo].[tblIntervencion] ([IdIntervencion])
GO
ALTER TABLE [dbo].[tblMNoAsistencial] CHECK CONSTRAINT [FK_tblMConferencia_tblIntervencion]
GO
/****** Object:  ForeignKey [FK_tblMunicipio2010_tblProvincia2010]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblMunicipio2010]  WITH CHECK ADD  CONSTRAINT [FK_tblMunicipio2010_tblProvincia2010] FOREIGN KEY([IdProvincia2010])
REFERENCES [dbo].[tblProvincia2010] ([IdProvincia2010])
GO
ALTER TABLE [dbo].[tblMunicipio2010] CHECK CONSTRAINT [FK_tblMunicipio2010_tblProvincia2010]
GO
/****** Object:  ForeignKey [FK_tblPaciente_tblEscolaridad]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tblPaciente_tblEscolaridad] FOREIGN KEY([IdEscolaridad])
REFERENCES [dbo].[tblEscolaridad] ([IdEscolaridad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPaciente] CHECK CONSTRAINT [FK_tblPaciente_tblEscolaridad]
GO
/****** Object:  ForeignKey [FK_tblPaciente_tblGenero]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tblPaciente_tblGenero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[tblGenero] ([IdGenero])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPaciente] CHECK CONSTRAINT [FK_tblPaciente_tblGenero]
GO
/****** Object:  ForeignKey [FK_tblPaciente_tblTipoDocumento]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tblPaciente_tblTipoDocumento] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[tblTipoDocumento] ([IdTipoDocumento])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPaciente] CHECK CONSTRAINT [FK_tblPaciente_tblTipoDocumento]
GO
/****** Object:  ForeignKey [FK_tblPaciente_tblUNAP]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tblPaciente_tblUNAP] FOREIGN KEY([IdUnapAsociada])
REFERENCES [dbo].[tblUNAP] ([IdUNAP])
GO
ALTER TABLE [dbo].[tblPaciente] CHECK CONSTRAINT [FK_tblPaciente_tblUNAP]
GO
/****** Object:  ForeignKey [FK_tblPacienteVacuna_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPacienteVacuna]  WITH CHECK ADD  CONSTRAINT [FK_tblPacienteVacuna_tblPaciente] FOREIGN KEY([IdPaciente], [IdUNAP])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPacienteVacuna] CHECK CONSTRAINT [FK_tblPacienteVacuna_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblPatologiaxPuerperio_tblPatologia]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblPatologiaxPuerperio]  WITH CHECK ADD  CONSTRAINT [FK_tblPatologiaxPuerperio_tblPatologia] FOREIGN KEY([IdPatologia])
REFERENCES [dbo].[tblPatologia] ([IdPatologia])
GO
ALTER TABLE [dbo].[tblPatologiaxPuerperio] CHECK CONSTRAINT [FK_tblPatologiaxPuerperio_tblPatologia]
GO
/****** Object:  ForeignKey [FK_tblReferencia_tblPaciente]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblReferencia]  WITH CHECK ADD  CONSTRAINT [FK_tblReferencia_tblPaciente] FOREIGN KEY([IdPaciente], [IdUnap])
REFERENCES [dbo].[tblPaciente] ([IdPaciente], [IdUNAP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblReferencia] CHECK CONSTRAINT [FK_tblReferencia_tblPaciente]
GO
/****** Object:  ForeignKey [FK_tblReferencia_tblUNAP]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblReferencia]  WITH CHECK ADD  CONSTRAINT [FK_tblReferencia_tblUNAP] FOREIGN KEY([IdUnap])
REFERENCES [dbo].[tblUNAP] ([IdUNAP])
GO
ALTER TABLE [dbo].[tblReferencia] CHECK CONSTRAINT [FK_tblReferencia_tblUNAP]
GO
/****** Object:  ForeignKey [FK_tblRolPermiso_tblPermiso]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblRolPermiso]  WITH CHECK ADD  CONSTRAINT [FK_tblRolPermiso_tblPermiso] FOREIGN KEY([idPermiso])
REFERENCES [dbo].[tblPermiso] ([idPermiso])
GO
ALTER TABLE [dbo].[tblRolPermiso] CHECK CONSTRAINT [FK_tblRolPermiso_tblPermiso]
GO
/****** Object:  ForeignKey [FK_tblRolPermiso_tblRol]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblRolPermiso]  WITH CHECK ADD  CONSTRAINT [FK_tblRolPermiso_tblRol] FOREIGN KEY([idRol])
REFERENCES [dbo].[tblRol] ([idRol])
GO
ALTER TABLE [dbo].[tblRolPermiso] CHECK CONSTRAINT [FK_tblRolPermiso_tblRol]
GO
/****** Object:  ForeignKey [FK_tblRolUsuario_tblRol]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblRolUsuario]  WITH CHECK ADD  CONSTRAINT [FK_tblRolUsuario_tblRol] FOREIGN KEY([idRol])
REFERENCES [dbo].[tblRol] ([idRol])
GO
ALTER TABLE [dbo].[tblRolUsuario] CHECK CONSTRAINT [FK_tblRolUsuario_tblRol]
GO
/****** Object:  ForeignKey [FK_tblRolUsuario_tblUsuario]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblRolUsuario]  WITH NOCHECK ADD  CONSTRAINT [FK_tblRolUsuario_tblUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tblUsuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tblRolUsuario] CHECK CONSTRAINT [FK_tblRolUsuario_tblUsuario]
GO
/****** Object:  ForeignKey [FK_tblSeccion2010_tblDistritoMunicipal2010]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblSeccion2010]  WITH CHECK ADD  CONSTRAINT [FK_tblSeccion2010_tblDistritoMunicipal2010] FOREIGN KEY([IdProvincia2010], [IdMunicipio2010], [IdDistritoMunicipal2010])
REFERENCES [dbo].[tblDistritoMunicipal2010] ([IdProvincia2010], [IdMunicipio2010], [IdDistritoMunicipal2010])
GO
ALTER TABLE [dbo].[tblSeccion2010] CHECK CONSTRAINT [FK_tblSeccion2010_tblDistritoMunicipal2010]
GO
/****** Object:  ForeignKey [FK_tblServicioActividad_tblServicioIntervencion]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblServicioActividad]  WITH CHECK ADD  CONSTRAINT [FK_tblServicioActividad_tblServicioIntervencion] FOREIGN KEY([IdServicioIntervencion])
REFERENCES [dbo].[tblServicioIntervencion] ([IdServicioIntervencion])
GO
ALTER TABLE [dbo].[tblServicioActividad] CHECK CONSTRAINT [FK_tblServicioActividad_tblServicioIntervencion]
GO
/****** Object:  ForeignKey [FK_tblServicioSubActividad_tblServicioActividad]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblServicioSubActividad]  WITH CHECK ADD  CONSTRAINT [FK_tblServicioSubActividad_tblServicioActividad] FOREIGN KEY([IdServicioActividad], [IdServicioIntervencion])
REFERENCES [dbo].[tblServicioActividad] ([IdServicioActividad], [IdServicioIntervencion])
GO
ALTER TABLE [dbo].[tblServicioSubActividad] CHECK CONSTRAINT [FK_tblServicioSubActividad_tblServicioActividad]
GO
/****** Object:  ForeignKey [FK_tblSintoma_tblGrupoSintoma]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblSintoma]  WITH CHECK ADD  CONSTRAINT [FK_tblSintoma_tblGrupoSintoma] FOREIGN KEY([IdGrupoSintoma])
REFERENCES [dbo].[tblGrupoSintoma] ([idGrupoSintoma])
GO
ALTER TABLE [dbo].[tblSintoma] CHECK CONSTRAINT [FK_tblSintoma_tblGrupoSintoma]
GO
/****** Object:  ForeignKey [FK_tblSubBarrio2010_tblBarrio2010]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblSubBarrio2010]  WITH CHECK ADD  CONSTRAINT [FK_tblSubBarrio2010_tblBarrio2010] FOREIGN KEY([IdProvincia2010], [IdMunicipio2010], [IdDistritoMunicipal2010], [IdSeccion2010], [IdBarrio2010])
REFERENCES [dbo].[tblBarrio2010] ([IdProvincia2010], [IdMunicipio2010], [IdDistritoMunicipal2010], [IdSeccion2010], [IdBarrio2010])
GO
ALTER TABLE [dbo].[tblSubBarrio2010] CHECK CONSTRAINT [FK_tblSubBarrio2010_tblBarrio2010]
GO
/****** Object:  ForeignKey [FK_tblUsuario_tblMedico]    Script Date: 04/15/2019 18:58:47 ******/
ALTER TABLE [dbo].[tblUsuario]  WITH CHECK ADD  CONSTRAINT [FK_tblUsuario_tblMedico] FOREIGN KEY([IdMedico])
REFERENCES [dbo].[tblMedico] ([IdMedico])
GO
ALTER TABLE [dbo].[tblUsuario] CHECK CONSTRAINT [FK_tblUsuario_tblMedico]
GO
