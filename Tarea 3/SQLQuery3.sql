USE [Tarea3]
GO
/****** Object:  Table [dbo].[Ventas de Paquetes]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas de Paquetes](
	[Ventas de Paquete] [int] NOT NULL,
 CONSTRAINT [PK_Ventas de Paquetes] PRIMARY KEY CLUSTERED 
(
	[Ventas de Paquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suministros]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suministros](
	[Suministros] [nchar](10) NOT NULL,
	[Num.Paquete] [int] NOT NULL,
 CONSTRAINT [PK_Suministros] PRIMARY KEY CLUSTERED 
(
	[Num.Paquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[Num. Compra] [int] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Num. Compra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Es]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Es](
	[Remitente] [nchar](10) NULL,
	[Destinatario] [int] NULL,
	[Es] [int] NOT NULL,
 CONSTRAINT [PK_Es] PRIMARY KEY CLUSTERED 
(
	[Es] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Nombre] [text] NOT NULL,
	[Apellido] [text] NOT NULL,
	[RFC] [int] NOT NULL,
	[Direccion] [text] NOT NULL,
	[Fecha de Nacimiento] [int] NOT NULL,
	[Num.Cliente] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Num.Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BodegaDePaquetesDevueltos]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BodegaDePaquetesDevueltos](
	[IdPaquete] [int] NOT NULL,
	[Nombre] [char](10) NOT NULL,
	[Direccion] [nchar](10) NOT NULL,
	[RFC] [nchar](10) NULL,
 CONSTRAINT [PK_BodegaDePaquetesDevueltos] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BodegaActiva]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BodegaActiva](
	[IdPaquete] [int] NOT NULL,
	[Entrada] [text] NOT NULL,
	[Salida] [text] NOT NULL,
	[Remitente] [text] NOT NULL,
 CONSTRAINT [PK_BodegaActiva] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Nombre] [text] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Precio] [bit] NOT NULL,
	[Cambio] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos2]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos2](
	[Nombre] [nchar](10) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Precio] [nchar](10) NULL,
	[Cambio] [nchar](10) NULL,
 CONSTRAINT [PK_Productos2] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provedores]    Script Date: 03/03/2018 09:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provedores](
	[NIE] [nchar](10) NOT NULL,
	[Nombre] [text] NOT NULL,
	[Direccion] [text] NULL,
	[Codigo] [int] NOT NULL,
	[Num. Provedor] [int] NOT NULL,
 CONSTRAINT [PK_Provedores] PRIMARY KEY CLUSTERED 
(
	[Num. Provedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_BodegaActiva_BodegaDePaquetesDevueltos]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[BodegaActiva]  WITH CHECK ADD  CONSTRAINT [FK_BodegaActiva_BodegaDePaquetesDevueltos] FOREIGN KEY([IdPaquete])
REFERENCES [dbo].[BodegaDePaquetesDevueltos] ([IdPaquete])
GO
ALTER TABLE [dbo].[BodegaActiva] CHECK CONSTRAINT [FK_BodegaActiva_BodegaDePaquetesDevueltos]
GO
/****** Object:  ForeignKey [FK_BodegaActiva_Suministros]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[BodegaActiva]  WITH CHECK ADD  CONSTRAINT [FK_BodegaActiva_Suministros] FOREIGN KEY([IdPaquete])
REFERENCES [dbo].[Suministros] ([Num.Paquete])
GO
ALTER TABLE [dbo].[BodegaActiva] CHECK CONSTRAINT [FK_BodegaActiva_Suministros]
GO
/****** Object:  ForeignKey [FK_BodegaDePaquetesDevueltos_Suministros]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[BodegaDePaquetesDevueltos]  WITH CHECK ADD  CONSTRAINT [FK_BodegaDePaquetesDevueltos_Suministros] FOREIGN KEY([IdPaquete])
REFERENCES [dbo].[Suministros] ([Num.Paquete])
GO
ALTER TABLE [dbo].[BodegaDePaquetesDevueltos] CHECK CONSTRAINT [FK_BodegaDePaquetesDevueltos_Suministros]
GO
/****** Object:  ForeignKey [FK_Cliente_Compra]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Compra] FOREIGN KEY([Num.Cliente])
REFERENCES [dbo].[Compra] ([Num. Compra])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Compra]
GO
/****** Object:  ForeignKey [FK_Compra_Ventas de Paquetes]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Ventas de Paquetes] FOREIGN KEY([Num. Compra])
REFERENCES [dbo].[Ventas de Paquetes] ([Ventas de Paquete])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Ventas de Paquetes]
GO
/****** Object:  ForeignKey [FK_Es_Compra]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Es]  WITH CHECK ADD  CONSTRAINT [FK_Es_Compra] FOREIGN KEY([Es])
REFERENCES [dbo].[Compra] ([Num. Compra])
GO
ALTER TABLE [dbo].[Es] CHECK CONSTRAINT [FK_Es_Compra]
GO
/****** Object:  ForeignKey [FK_Productos_BodegaDePaquetesDevueltos]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_BodegaDePaquetesDevueltos] FOREIGN KEY([Codigo])
REFERENCES [dbo].[BodegaDePaquetesDevueltos] ([IdPaquete])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_BodegaDePaquetesDevueltos]
GO
/****** Object:  ForeignKey [FK_Productos_Suministros]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Suministros] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Suministros] ([Num.Paquete])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Suministros]
GO
/****** Object:  ForeignKey [FK_Productos2_BodegaActiva]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Productos2]  WITH CHECK ADD  CONSTRAINT [FK_Productos2_BodegaActiva] FOREIGN KEY([Codigo])
REFERENCES [dbo].[BodegaActiva] ([IdPaquete])
GO
ALTER TABLE [dbo].[Productos2] CHECK CONSTRAINT [FK_Productos2_BodegaActiva]
GO
/****** Object:  ForeignKey [FK_Provedores_Productos]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Provedores]  WITH CHECK ADD  CONSTRAINT [FK_Provedores_Productos] FOREIGN KEY([Num. Provedor])
REFERENCES [dbo].[Productos] ([Codigo])
GO
ALTER TABLE [dbo].[Provedores] CHECK CONSTRAINT [FK_Provedores_Productos]
GO
/****** Object:  ForeignKey [FK_Provedores_Productos2]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Provedores]  WITH CHECK ADD  CONSTRAINT [FK_Provedores_Productos2] FOREIGN KEY([Num. Provedor])
REFERENCES [dbo].[Productos2] ([Codigo])
GO
ALTER TABLE [dbo].[Provedores] CHECK CONSTRAINT [FK_Provedores_Productos2]
GO
/****** Object:  ForeignKey [FK_Suministros_Ventas de Paquetes]    Script Date: 03/03/2018 09:19:40 ******/
ALTER TABLE [dbo].[Suministros]  WITH CHECK ADD  CONSTRAINT [FK_Suministros_Ventas de Paquetes] FOREIGN KEY([Num.Paquete])
REFERENCES [dbo].[Ventas de Paquetes] ([Ventas de Paquete])
GO
ALTER TABLE [dbo].[Suministros] CHECK CONSTRAINT [FK_Suministros_Ventas de Paquetes]
GO
