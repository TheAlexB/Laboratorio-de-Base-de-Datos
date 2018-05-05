CREATE PROCEDURE sp_addEmpleado 
				@idEmpleado int,
				@idPersona int,
				@tipo varchar(30),
				@telefono varchar(30)
AS
INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo,Telefono) 
VALUES(@idEmpleado,@idPersona,@tipo,@telefono)

CREATE PROCEDURE sp_dropEmpleado
				@tipo as varchar(30)
AS
DELETE FROM Empleados WHERE Tipo = @tipo

CREATE PROCEDURE sp_dropBodega
				@idBodega as int
AS
DELETE FROM Bodega WHERE IdBodega = @idBodega

CREATE PROCEDURE sp_dropCamion
				@idCamion as int
AS
DELETE FROM Camiones WHERE IdCamiones = @idCamion 

CREATE PROCEDURE sp_dropPersona
				@idPersona as int
AS
DELETE FROM Persona WHERE @idPersona = @idPersona

CREATE FUNCTION dbo.stripEmpleado (@input VARCHAR(250))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @name VARCHAR(250)

    SET @name = @Input

    SET @name = REPLACE(@name, 'a', '')
    SET @name = REPLACE(@name, 'b', '')

    RETURN @name
END

CREATE TRIGGER tr_Empleado
      ON Empleados
      AFTER UPDATE
      AS
        BEGIN
         INSERT INTO Empleados
         (IdEmpleado, IdPersona,Tipo, Telefono)
         SELECT IdEmpleado,IdPersona, Tipo, Telefono
         FROM INSERTED
        END