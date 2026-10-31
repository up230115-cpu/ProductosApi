CREATE DATABASE ProductosDB;
GO
USE ProductosDB;
GO
CREATE TABLE Productos (
    Id          INT IDENTITY(1,1) PRIMARY KEY,
    Nombre      NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(250) NULL,
    Precio      DECIMAL(10,2) NOT NULL,
    Stock       INT NOT NULL DEFAULT 0
);
GO
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock)
VALUES ('Laptop', 'Laptop 14 pulgadas', 12500.00, 10),
       ('Mouse', 'Mouse inalámbrico', 250.00, 50);
