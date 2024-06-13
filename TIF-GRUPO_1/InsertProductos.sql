Use TIF_ProgramacionIII
Go

ALTER TABLE Productos
Add Imagen_URL varchar(250) Null;

ALTER TABLE Productos
Add Descripcion varchar (200);

--insert de Categoria.
Insert into Categoria(Nombre)
values ('Comida'), ('Bebida')

-- insert Bebidas
insert into Productos(Nombre,Precio,IdCategoria,Stock,Estado,Imagen_URL,Descripcion)
values ('Cerveza Lager AMSTEL', 1800, 2, 100, 1, 'https://jumboargentina.vtexassets.com/arquivos/ids/617395-1200-auto?v=637437284177370000&width=1200&height=auto&aspect=true','lata de 473ML'),
('Cerveza IPA IMPERIAL', 2500, 2, 120, 1, 'https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3100604_f.jpg','botella de 1 litro'),
('COCA COLA', 1500, 2, 150, 1, 'https://dcdn.mitiendanube.com/stores/001/151/835/products/77908950009971-d6396175b7ca20416b15890784336194-480-0.webp','botella de 2.5 litros'),
('SPRITE', 1500, 2, 150, 1, 'https://www.miliana.com.ar/productos/gaseosa-sprite-2-25-litros/','botella de 2.5 litros'),
('Mojito',3500, 2, 80, 1, 'https://cdn.loveandlemons.com/wp-content/uploads/2020/07/mojito-recipe.jpg','Copa de 350 ml aproximados'),
('Daiquiri', 3500, 2, 65, 1, 'https://static01.nyt.com/images/2023/11/21/multimedia/LH-Strawberry-Daiquiri-fhlk/LH-Strawberry-Daiquiri-fhlk-master768.jpg?width=1024&quality=75&auto=webp','Vaso largo de 350 ml aproximados');

--insert En categoria de Productos, los productos agregados.

insert into [Categoria.Producto] (IdCategoria,IdProducto)
values (2,1),(2,2),(2,3),(2,4),(2,5),(2,6);

--insert Comida
insert into Productos (Nombre,Precio,IdCategoria,Stock,Estado,Imagen_URL,Descripcion)
values ('Pizza Mussa', 4200, 1, 20, 1, 'https://saborargento.com.ar/wp-content/uploads/2023/09/Receta-de-Pizza-Muzzarella.webp','Mussarella y oregano, rinde 8 porciones'),
('Hamburguesa Completa', 2350, 1, 40, 1, 'https://www.hogar.mapfre.es/media/2018/09/hamburguesa-sencilla-980x625.jpg','Hamburguesa con jamon y queso, tomate, lechuga y huevo a la plancha.'),
('Milanesa a Caballo', 3500, 1, 35,1,'https://media.lmneuquen.com/p/dac6532848b09644ff057d5037b212c5/adjuntos/195/imagenes/005/541/0005541106/milanesas-a-caballojpg.jpg','Milanesa con huevo frito a caballo.'),
('Ensalada mixta', 800, 1, 20, 1,'https://www.laylita.com/recetas/wp-content/uploads/Ensalada-de-lechuga-con-limon-y-cilantro.jpg','Ensalada de lechuga, tomate, palta y cebolla.'),
('Papas fritas', 800, 1, 70,1,'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcT1rwHV76cR1gwVhjIq9JlfkbZEy6wBK-lg7NhUa__l8L4Klm40-tkX8lpiBWMUDTx0','Porcion de papas rinde 1 porcion.');

--insert En categoria de Productos, los productos agregados.
insert into [Categoria.Producto] (IdCategoria,IdProducto)
values (1,7),(1,8),(1,9),(1,10),(1,11);


--Actualizacion de url de imagenes
update Productos 
set Imagen_URL = 'https://www.dietfarma.com/sites/default/files/hamburguesa_completa_final_0.png'
where Nombre like 'Hamburg%';

update Productos 
set Imagen_URL = 'https://mall.icbc.com.ar/21880487-thickbox_default/pack-x8-gaseosa-sprite-original-225-litros.jpg'
where IdProducto = 4;