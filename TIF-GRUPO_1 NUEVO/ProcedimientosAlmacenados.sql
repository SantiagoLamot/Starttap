--Jenny Procedimiento para insertar Usuario con tipo cliente.
CREATE PROCEDURE InsertarUsuario
    @Nombre NVARCHAR(50),
    @Apellido NVARCHAR(50),
    @Email NVARCHAR(100),
    @Contraseña NVARCHAR(100),
    @DNI NVARCHAR(20),
    @Telefono NVARCHAR(20),
    @Direccion NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IdUsuario INT;

    
    INSERT INTO Usuario (Nombre, Apellido, Email, Contraseña, DNI, Telefono, Direccion)
    VALUES (@Nombre, @Apellido, @Email, @Contraseña, @DNI, @Telefono, @Direccion);

    
    SET @IdUsuario = SCOPE_IDENTITY();

    
    INSERT INTO Usuario_Tipos (IdUsuario, IdTipos)
    VALUES (@IdUsuario, 3);
END;

---Kechum 
---Procedimiento para insertar Nuevo Producto
CREATE PROCEDURE InsertarProductosYCategorias
    @Nombre NCHAR(100),
    @Descripcion NVARCHAR(255),
    @Precio decimal (10, 2),
    @Stock INT,
    @Imagen_URL NVARCHAR(255),
    @Estado BIT,
    @IdCategoria INT
AS
BEGIN
    BEGIN TRANSACTION;
		BEGIN TRY
			DECLARE @NuevosProductos TABLE (IdProducto INT);

			INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, Imagen_URL, Estado)
			OUTPUT INSERTED.IdProducto INTO @NuevosProductos
			VALUES (@Nombre, @Descripcion, @Precio, @Stock, @Imagen_URL, @Estado);
    
			INSERT INTO Categoria_Productos (IdCategoria, IdProducto)
			SELECT @IdCategoria, IdProducto FROM @NuevosProductos;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;

---Kechum
---Procedimiento para insertar Nuevo Empleado, desde un usuario Existente.
CREATE PROCEDURE spInsertarEmpleado
    @IdUsuario INT,
    @Salario DECIMAL,
    @IdRol INT,
    @FechaIngreso DATETIME,
    @Horarios VARCHAR(20),
    @Estado BIT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

       
        INSERT INTO Empleado (IdUsuario, Salario, IdRol, FechaIngreso, Horarios, Estado)
        VALUES (@IdUsuario, @Salario, @IdRol, @FechaIngreso, @Horarios, @Estado);

        
        UPDATE Usuario_Tipos
        SET IdTipos = 2
        WHERE IdUsuario = @IdUsuario;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
