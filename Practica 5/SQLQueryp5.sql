SELECT * FROM Bodega;

SELECT * FROM Cliente;

SELECT * FROM Camiones;

SELECT * FROM Chofer;

SELECT * FROM Empleados;

SELECT Tipo
FROM Empleados
GROUP BY Tipo;

SELECT Telefono
FROM Empleados
GROUP BY Telefono;

SELECT IdEmpleado
FROM Empleados
GROUP BY IdEmpleado;

SELECT IdPersona
FROM Empleados
GROUP BY IdPersona;

SELECT RFC
FROM Cliente
GROUP BY RFC;

SELECT AVG([Can.Paquetes])
FROM Camiones;

SELECT SUM([Can.Paquetes])
FROM Camiones;

SELECT MIN(Telefono)
FROM Empleados;

SELECT AVG(CostoDeEnvio)
FROM Camiones;

SELECT SUM(CostoDeEnvio)
FROM Camiones;

SELECT Tipo, COUNT(IdEmpleado)
FROM Empleados
GROUP BY Tipo
HAVING COUNT(IdEmpleado) > 0;

SELECT Telefono, count(IdEmpleado)
FROM Empleados
GROUP BY Telefono
HAVING count(IdEmpleado) > 0;

SELECT Tipo, count(IdPersona)
FROM Empleados
GROUP BY Tipo
HAVING count(IdPersona) > 0;

SELECT Telefono, count(IdPersona)
FROM Empleados
GROUP BY Telefono
HAVING count(IdPersona) > 0;

SELECT RFC, count(IdCliente)
FROM Cliente
GROUP BY RFC
HAVING count(IdCliente) > 0;

SELECT TOP 4 * FROM Empleados;

SELECT TOP 3 * FROM Empleados;

SELECT TOP 5 * FROM Empleados;

SELECT TOP 2 * FROM Empleados;

SELECT TOP 1 * FROM Empleados;
