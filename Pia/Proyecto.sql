USE [Proyecto]
GO
/****** Object:  UserDefinedFunction [dbo].[stripEmpleado]    Script Date: 4/5/2018 19:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[stripEmpleado] (@input VARCHAR(250))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @name VARCHAR(250)

    SET @name = @Input

    SET @name = REPLACE(@name, 'a', '')
    SET @name = REPLACE(@name, 'b', '')

    RETURN @name
END
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 4/5/2018 19:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] NOT NULL,
	[IdPersona] [int] NULL,
	[Tipo] [char](30) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] NOT NULL,
	[Nombre] [char](30) NOT NULL,
	[Apellido Paterno] [char](30) NOT NULL,
	[Apellido Materno] [char](30) NULL,
	[Genero] [char](2) NOT NULL,
	[Fecha Nacimiento] [date] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_empleadoAndPersona]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_empleadoAndPersona]
AS
SELECT Empleados.IdPersona,Empleados.Telefono,
Persona.Nombre,Persona.[Apellido Paterno]
FROM Empleados
CROSS JOIN Persona;
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProductos] [int] NOT NULL,
	[IdProvedor] [int] NOT NULL,
	[Nombre] [char](10) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[Cambio] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProductos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provedores]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provedores](
	[RFC] [char](20) NOT NULL,
	[Nombre] [char](10) NOT NULL,
	[Direccion] [char](400) NOT NULL,
	[Codigo] [int] NOT NULL,
	[IdProvedores] [int] NOT NULL,
 CONSTRAINT [PK_Provedores] PRIMARY KEY CLUSTERED 
(
	[IdProvedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_productoAndProvedores]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_productoAndProvedores]
AS
SELECT Producto.Nombre, Producto.Precio,
Provedores.Codigo, Provedores.RFC 
FROM Producto
CROSS JOIN Provedores;
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[IdVenta] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_empleadoAndVenta]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[view_empleadoAndVenta]
AS
SELECT Empleados.Tipo,Empleados.Telefono,
Venta.Fecha,Venta.IdVenta
FROM Empleados
CROSS JOIN Venta;
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[RFC] [char](30) NOT NULL,
	[Fecha de Nacimiento] [date] NOT NULL,
	[IdPersona] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_clienteAndVenta]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[view_clienteAndVenta]
AS
SELECT Cliente.[Fecha de Nacimiento],Cliente.RFC,
Venta.Fecha,Venta.IdVenta
FROM Cliente
CROSS JOIN Venta;
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[Can.Paquetes] [int] NOT NULL,
	[IdViaje] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[Can.Paquetes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_paqueteAndProducto]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_paqueteAndProducto]
AS
SELECT Paquete.[Can.Paquetes],Paquete.Precio,
Producto.Nombre, Producto.Cambio 
FROM Paquete
CROSS JOIN Producto;
GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodega](
	[IdBodega] [int] NOT NULL,
	[Can.Paquetes] [int] NOT NULL,
	[IdProductos] [int] NOT NULL,
 CONSTRAINT [PK_Bodega] PRIMARY KEY CLUSTERED 
(
	[IdBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 4/5/2018 19:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[IdCamiones] [int] NOT NULL,
	[Can.Paquetes] [int] NOT NULL,
	[TipoServicio] [char](10) NOT NULL,
	[CostoDeEnvio] [int] NOT NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[IdCamiones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[IdChofer] [int] NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdCamiones] [int] NOT NULL,
 CONSTRAINT [PK_Chofer] PRIMARY KEY CLUSTERED 
(
	[IdChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lugares]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lugares](
	[IdLugar] [int] NOT NULL,
	[Estado] [char](30) NOT NULL,
	[Pais] [char](30) NOT NULL,
	[Direccion] [char](30) NOT NULL,
 CONSTRAINT [PK_Lugares] PRIMARY KEY CLUSTERED 
(
	[IdLugar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viajes]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viajes](
	[IdViaje] [int] NOT NULL,
	[IdChofer] [int] NOT NULL,
	[IdCamiones] [int] NOT NULL,
 CONSTRAINT [PK_Viajes] PRIMARY KEY CLUSTERED 
(
	[IdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_addEmpleado]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_addEmpleado] 
				@idEmpleado int,
				@idPersona int,
				@tipo varchar(30),
				@telefono varchar(30)
AS
INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo,Telefono) 
VALUES(@idEmpleado,@idPersona,@tipo,@telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_dropBodega]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_dropBodega]
				@idBodega as int
AS
DELETE FROM Bodega WHERE IdBodega = @idBodega
GO
/****** Object:  StoredProcedure [dbo].[sp_dropCamion]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_dropCamion]
				@idCamion as int
AS
DELETE FROM Camiones WHERE IdCamiones = @idCamion
GO
/****** Object:  StoredProcedure [dbo].[sp_dropEmpleado]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_dropEmpleado]
				@tipo as varchar(30)
AS
DELETE FROM Empleados WHERE Tipo = @tipo
GO
/****** Object:  StoredProcedure [dbo].[sp_dropPersona]    Script Date: 4/5/2018 19:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_dropPersona]
				@idPersona as int
AS
DELETE FROM Persona WHERE @idPersona = @idPersona
GO
