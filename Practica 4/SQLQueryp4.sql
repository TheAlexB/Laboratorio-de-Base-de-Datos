INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('1', '1', 'jefe', '81234567');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('2', '2', 'limpieza', '81765432');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('3', '3', 'secretaria', '813456789');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('4', '4', 'gerente', '819876543');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('5', '5', 'administrador de sistemas', '81456890');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('6', '6', 'contador', '810987654');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('7', '7', 'auxiliar', '815678901');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('8', '8', 'supervisor', '811098765');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('9', '9', 'capturista', '815678901');

INSERT INTO Empleados(IdEmpleado, IdPersona, Tipo, Telefono)
VALUES ('10', '10', 'chofer', '8121098765');

DELETE FROM Empleados
WHERE Tipo = 'jefe';

DELETE FROM Empleados
WHERE Tipo = 'limpieza';

DELETE FROM Empleados
WHERE Tipo = 'contador';

DELETE FROM Empleados
WHERE Tipo = 'gerente';

DELETE FROM Empleados
WHERE Tipo ='supervisor';
