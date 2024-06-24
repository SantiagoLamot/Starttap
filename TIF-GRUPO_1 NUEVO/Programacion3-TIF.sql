CREATE DATABASE Programacion3_TIF

USE Programacion3_TIF
GO

CREATE TABLE Categoria (
    IdCategoria int IDENTITY(1,1) NOT NULL,
    Nombre nchar(50) NOT NULL,
    CONSTRAINT PK_Categoria PRIMARY KEY (IdCategoria)
);

CREATE TABLE Productos (
    IdProducto int IDENTITY(1,1) NOT NULL,
    Nombre nchar(50) NOT NULL,
    Descripcion varchar(150) NOT NULL,
    Precio money NOT NULL,
    Stock int NOT NULL,
    Imagen_URL varchar(250) NOT NULL,
    Estado bit NOT NULL,
    CONSTRAINT PK_Productos PRIMARY KEY (IdProducto)
);

CREATE TABLE Categoria_Productos (
    IdCategoria int NOT NULL,
    IdProducto int NOT NULL,
    PRIMARY KEY (IdCategoria, IdProducto),
    FOREIGN KEY (IdCategoria) REFERENCES Categoria(IdCategoria),
    FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
);

CREATE TABLE Usuario (
    IdUsuario int IDENTITY(1,1) NOT NULL,
    Nombre nchar(50) NOT NULL,
    Apellido nchar(50) NOT NULL,
    Email nchar(50) NOT NULL,
    Contraseña nchar(50) NOT NULL,
    DNI nchar(20) NOT NULL,
    Telefono nchar(20) NOT NULL,
    Direccion nchar(50) NOT NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY (IdUsuario)
);

CREATE TABLE TiposUsuarios (
    IdTipos int IDENTITY(1,1) NOT NULL,
    Tipo varchar(20),
    CONSTRAINT PK_IdTipos PRIMARY KEY (IdTipos)
);

CREATE TABLE Usuario_Tipos (
    IdUsuario int NOT NULL,
    IdTipos int NOT NULL,
    CONSTRAINT FK_Usuarios_Tipos_Usuario FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    CONSTRAINT FK_Usuarios_Tipos_TiposUsuarios FOREIGN KEY (IdTipos) REFERENCES TiposUsuarios(IdTipos),
    PRIMARY KEY (IdUsuario, IdTipos)
);

CREATE TABLE Roles (
    IdRol int IDENTITY(1,1) NOT NULL,
    NombreRol varchar(50) NOT NULL,
    CONSTRAINT PK_Roles PRIMARY KEY (IdRol)
);

CREATE TABLE Empleado (
    IdEmpleado int IDENTITY(1,1) NOT NULL,
    IdUsuario int NOT NULL,
    Salario money NULL,
    IdRol int NULL,
    FechaIngreso datetime NULL,
    Horarios varchar(20) NULL,
    Estado bit NULL,
    CONSTRAINT PK_Empleado PRIMARY KEY (IdEmpleado),
    CONSTRAINT FK_Empleado_Usuario FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    CONSTRAINT FK_Empleado_Rol FOREIGN KEY (IdRol) REFERENCES Roles(IdRol)
);

CREATE TABLE Mesa (
    IdMesa int IDENTITY(1,1) NOT NULL,
    Numero int NOT NULL,
    CONSTRAINT PK_Mesa PRIMARY KEY (IdMesa)
);

CREATE TABLE Reserva (
    IdReserva int IDENTITY(1,1) NOT NULL,
    IdUsuario int NOT NULL,
    IdMesa int NOT NULL,
    Fecha datetime NOT NULL,
    Comensales int NOT NULL,
	Estado bit NULL,
    CONSTRAINT PK_Reserva PRIMARY KEY CLUSTERED (IdReserva),
    CONSTRAINT FK_Reserva_Usuario FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    CONSTRAINT FK_Reserva_Mesa FOREIGN KEY (IdMesa) REFERENCES Mesa(IdMesa)
);

CREATE TABLE Ordenes (
    IdOrden int IDENTITY(1,1) NOT NULL,
    IdUsuario int NOT NULL,
    IdEmpleado int NOT NULL,
    IdMesa int NOT NULL,
    Fecha datetime NOT NULL,
    Total money NOT NULL,
    EstadoComanda bit NOT NULL,
    EstadoPreparacion bit NOT NULL,
    CONSTRAINT PK_Ordenes PRIMARY KEY (IdOrden),
    CONSTRAINT FK_Ordenes_Usuario FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    CONSTRAINT FK_Ordenes_Empleado FOREIGN KEY (IdEmpleado) REFERENCES Empleado(IdEmpleado),
    CONSTRAINT FK_Ordenes_Mesa FOREIGN KEY (IdMesa) REFERENCES Mesa(IdMesa)
);

CREATE TABLE Productos_Orden (
    IdDetalle int IDENTITY(1,1) NOT NULL,
    IdOrden int NOT NULL,
    IdProducto int NOT NULL,
    Cantidad int NOT NULL,
    Subtotal money NOT NULL,
    CONSTRAINT PK_Productos_Orden PRIMARY KEY (IdDetalle),
    FOREIGN KEY (IdOrden) REFERENCES Ordenes(IdOrden), 
    FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto) 
);

SELECT * FROM Productos