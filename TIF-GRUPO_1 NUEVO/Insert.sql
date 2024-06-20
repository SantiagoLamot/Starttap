Use Programacion3_TIF
Go


--insert de Categoria.
Insert into Categoria(Nombre)
values ('Comida'), ('Bebida')

-- insert Bebidas
insert into Productos(Nombre,Descripcion,Precio,Stock,Imagen_URL,Estado)
values ('Cerveza Lager AMSTEL','lata de 473ML', 1800, 100,'https://jumboargentina.vtexassets.com/arquivos/ids/617395-1200-auto?v=637437284177370000&width=1200&height=auto&aspect=true', 1),
('Cerveza IPA IMPERIAL','botella de 1 litro', 2500, 120, 'https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3100604_f.jpg', 1),
('COCA COLA','botella de 2.5 litros', 1500,150, 'https://dcdn.mitiendanube.com/stores/001/151/835/products/77908950009971-d6396175b7ca20416b15890784336194-480-0.webp',1),
('SPRITE','botella de 2.5 litros', 1500, 150, 'https://mall.icbc.com.ar/21880487-thickbox_default/pack-x8-gaseosa-sprite-original-225-litros.jpg',1),
('Mojito','Copa de 350 ml aproximados', 3500, 80, 'https://cdn.loveandlemons.com/wp-content/uploads/2020/07/mojito-recipe.jpg',1),
('Daiquiri','Vaso largo de 350 ml aproximados', 3500,65, 'https://static01.nyt.com/images/2023/11/21/multimedia/LH-Strawberry-Daiquiri-fhlk/LH-Strawberry-Daiquiri-fhlk-master768.jpg?width=1024&quality=75&auto=webp',1);

--insert En categoria de Productos, los productos agregados.

insert into Categoria_Productos (IdCategoria,IdProducto)
values (2,1),(2,2),(2,3),(2,4),(2,5),(2,6);

--insert Comida
insert into Productos (Nombre,Descripcion,Precio,Stock,Imagen_URL,Estado)
values ('Pizza Mussa','Mussarella y oregano, rinde 8 porciones', 4200, 20, 'https://saborargento.com.ar/wp-content/uploads/2023/09/Receta-de-Pizza-Muzzarella.webp',1),
('Hamburguesa Completa','Hamburguesa con jamon y queso, tomate, lechuga y huevo a la plancha.', 2350, 40, 'https://www.dietfarma.com/sites/default/files/hamburguesa_completa_final_0.png',1),
('Milanesa a Caballo','Milanesa con huevo frito a caballo.', 3500,35,'https://media.lmneuquen.com/p/dac6532848b09644ff057d5037b212c5/adjuntos/195/imagenes/005/541/0005541106/milanesas-a-caballojpg.jpg',1),
('Ensalada mixta','Ensalada de lechuga, tomate, palta y cebolla.', 800,  20, 'https://www.laylita.com/recetas/wp-content/uploads/Ensalada-de-lechuga-con-limon-y-cilantro.jpg',1),
('Papas fritas','Porcion de papas rinde 1 porcion.', 800, 70,'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcT1rwHV76cR1gwVhjIq9JlfkbZEy6wBK-lg7NhUa__l8L4Klm40-tkX8lpiBWMUDTx0',1);

--insert En categoria de Productos, los productos agregados.
insert into Categoria_Productos (IdCategoria,IdProducto)
values (1,7),(1,8),(1,9),(1,10),(1,11);

--INSERT MESAS
insert into Mesa(Numero)
VALUES (1),(2),(3),(4),(5),(6),(7),(8);

--INSERT TIPOS DE USUARIOS
Insert into TiposUsuarios(Tipo)
Values ('Administrador'), ('Empleado'), ('Cliente'),('Cliente inactivo')

--INSERT ROLES DE EMPLEADOS
Insert into Roles(NombreRol)
values ('Mesero'),('Cocinero')

--INSERT USUARIO ADMINISTRADOR 
INSERT INTO Usuario(Nombre,Apellido,Email,Contraseña,DNI,Telefono,Direccion)
values ('Lionel', 'Messi', 'leomessi@gmail.com','181222', '35824101', '11-05245782', '9 de Julio 640')

INSERT INTO Usuario(Nombre, Apellido, Email, Contraseña, DNI, Telefono, Direccion)
VALUES
('Juan', 'Pérez', 'juan.perez@example.com', 'contraseña123', '12345678', '555-1234', 'Calle Falsa 123'),
('María', 'González', 'maria.gonzalez@example.com', 'contraseña456', '87654321', '555-5678', 'Avenida Siempre Viva 456'),
('Carlos', 'Ramírez', 'carlos.ramirez@example.com', 'contraseña789', '11223344', '555-8765', 'Calle Luna 789'),
('Ana', 'Fernández', 'ana.fernandez@example.com', 'contraseña101', '44332211', '555-4321', 'Avenida Sol 101'),
('Luis', 'Martínez', 'luis.martinez@example.com', 'contraseña202', '55667788', '555-2345', 'Calle Estrella 202'),
('Elena', 'López', 'elena.lopez@example.com', 'contraseña303', '99887766', '555-3456', 'Avenida Horizonte 303'),
('Miguel', 'Sánchez', 'miguel.sanchez@example.com', 'contraseña404', '88776655', '555-4567', 'Calle Aurora 404'),
('Lucía', 'Torres', 'lucia.torres@example.com', 'contraseña505', '77665544', '555-5679', 'Avenida Océano 505'),
('Jorge', 'Díaz', 'jorge.diaz@example.com', 'contraseña606', '66554433', '555-6789', 'Calle Mar 606'),
('Marta', 'Morales', 'marta.morales@example.com', 'contraseña707', '55443322', '555-7890', 'Avenida Tierra 707');


--INSERT EL TIPO DE USUARIO PARA ULTIMO REGISTRO CREADO
insert into Usuario_Tipos(IdUsuario,IdTipos)
values (1,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,3),(8,3),(9,3),(10,4),(11,4)

--INSERT DE TABLA ROLES DE EMPLEADO
INSERT INTO Empleado(IdUsuario, Salario, IdRol, FechaIngreso, Horarios, Estado)
VALUES (2, 50000, 1, '19-05-2024', '20 a 2', 1),
(3, 50000, 1, '19-05-2024', '20 a 2', 1),
(4, 50000, 1, '19-05-2024', '20 a 2', 1),
(5, 50000, 1, '19-05-2024', '20 a 2', 1),
(6, 50000, 2, '19-05-2024', '20 a 2', 1),
(7, 50000, 2, '19-05-2024', '20 a 2', 1),
(8, 50000, 2, '19-05-2024', '20 a 2', 1),
(9, 50000, 2, '19-05-2024', '20 a 2', 1),
(10, 50000, 2, '19-05-2024', '20 a 2', 0)
