USE [Tarea3]
GO
/****** Object:  Table [dbo].[Provedores]    Script Date: 03/03/2018 08:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provedores](
	[NIE] [nchar](10) NOT NULL,
	[Nombre] [text] NOT NULL,
	[Direccion] [text] NULL,
	[Codigo] [int] NULL,
	[Num. Provedor] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 03/03/2018 08:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Nombre] [text] NOT NULL,
	[Codigo] [bit] NULL,
	[Precio] [bit] NULL,
	[Cambio] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 03/03/2018 08:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[Compra] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/03/2018 08:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Nombre] [text] NULL,
	[Apellido] [text] NULL,
	[RFC] [int] NULL,
	[Direccion] [text] NULL,
	[Fecha de Nacimiento] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BodegaDePaquetesDevueltos]    Script Date: 03/03/2018 08:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BodegaDePaquetesDevueltos](
	[IdPaquete] [int] NULL,
	[Nombre] [char](10) NULL,
	[Direccion] [nchar](10) NULL,
	[RFC] [nchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BodegaActiva]    Script Date: 03/03/2018 08:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BodegaActiva](
	[IdPaquete] [int] NULL,
	[Entrada] [text] NOT NULL,
	[Salida] [text] NOT NULL,
	[Remitente] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
