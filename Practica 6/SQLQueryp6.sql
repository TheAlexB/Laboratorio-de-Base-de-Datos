CREATE VIEW view_empleadoAndPersona
AS
SELECT Empleados.IdPersona,Empleados.Telefono,
Persona.Nombre,Persona.[Apellido Paterno]
FROM Empleados
CROSS JOIN Persona;

CREATE VIEW view_productoAndProvedores
AS
SELECT Producto.Nombre, Producto.Precio,
Provedores.Codigo, Provedores.RFC 
FROM Producto
CROSS JOIN Provedores;

CREATE VIEW view_empleadoAndVenta
AS
SELECT Empleados.Tipo,Empleados.Telefono,
Venta.Fecha,Venta.IdVenta
FROM Empleados
CROSS JOIN Venta;

CREATE VIEW view_clienteAndVenta
AS
SELECT Cliente.[Fecha de Nacimiento],Cliente.RFC,
Venta.Fecha,Venta.IdVenta
FROM Cliente
CROSS JOIN Venta;

CREATE VIEW view_paqueteAndProducto
AS
SELECT Paquete.[Can.Paquetes],Paquete.Precio,
Producto.Nombre, Producto.Cambio 
FROM Paquete
CROSS JOIN Producto;
