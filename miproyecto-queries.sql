create view vista_ventas_mensuales as
select
   year(p.fecha) as Año,
   month(p.fecha) as Mes,
   concat(sum(p2.precio), '€') as TotalVentas
from
   pedido p
   inner join detallespedido d on p.idPedido = d.Pedido_idPedido
   inner join productos p2 on d.Producto_idPlato = p2.idPlato
group by year(p.fecha), month(p.fecha)
order by Año asc, Mes asc;


SELECT * from vista_ventas_mensuales;

reate view vista_estadisticas_pedidos as
select
   p.categoria,
   count(d.pedido_idpedido) as total_pedidos,
   sum(p3.precio) as total_ventas
from
   productos p
   inner join detallespedido d on p.idplato = d.producto_idplato
   inner join pedido p2 on d.pedido_idpedido = p2.idpedido
   inner join productos p3 on d.producto_idplato = p3.idplato
group by
   p.categoria
order by
   total_pedidos desc;


SELECT * from vista_estadisticas_pedidos;

elimiter $$
create function calcular_precio_total_pedido(pedido_id int) returns decimal(10, 2)
deterministic
begin
   declare total decimal(10, 2);
  
   select sum(productos.precio)
   into total
   from detallespedido
   inner join productos on detallespedido.producto_idplato = productos.idplato
   where detallespedido.pedido_idpedido = pedido_id;
  
   return total;
end $$
delimiter ;


SELECT calcular_precio_total_pedido(17);

delimiter $$
create function empleado_con_salario_superior_promedio(empleado_id int) returns boolean
deterministic
begin
   declare promedio_salario decimal(10, 2);
   declare salario_empleado decimal(10, 2);
   declare superior boolean;
  
   select avg(salario) into promedio_salario from empleados;
  
   select salario into salario_empleado from empleados where idempleado = empleado_id;
  
   if salario_empleado > promedio_salario then
       set superior = true;
   else
       set superior = false;
   end if;
  
   return superior;
end $$
delimiter ;
SELECT empleado_con_salario_superior_promedio(2);

create table registro_pedidos(
id INT AUTO_INCREMENT PRIMARY KEY,
idPedido INT,
estadoAnterior VARCHAR(50),
nuevoEstado VARCHAR(50),
usuario VARCHAR(50),
fecha TIMESTAMP
);
delimiter $$
create procedure actualizar_estado_pedido(in pedido_id int, in nuevo_estado varchar(50), in usuario varchar(50))
begin
   declare estado_anterior varchar(50);
  
   select estadoPedido into estado_anterior from pedido where idPedido = pedido_id;
  
   update pedido
   set estadoPedido = nuevo_estado
   where idPedido = pedido_id;
  
   insert into registro_pedidos (idPedido, estadoAnterior, nuevoEstado, usuario, fecha)
   values (pedido_id, estado_anterior, nuevo_estado, usuario, now());
end $$
delimiter ;
call actualizar_estado_pedido(2,"Listo",3);


delimiter $$
create procedure mostrar_empleados()
begin
   declare id_empleado int;
   declare nombre_empleado varchar(45);
   declare apellido_empleado varchar(45);
   declare puesto_empleado varchar(45);
   declare salario_empleado decimal(10, 2);
   declare fecha_empleado date;
   declare jefe_id_empleado int;
   declare pedido_id_pedido int;
   declare done bool default false;
   declare salida varchar(16383) default '';
   declare c1 cursor for
       select idempleado, nombre, apellido, puesto, salario, fecha, jefe_idempleado, pedido_idpedido
       from empleados
       order by idempleado;
   declare continue handler for not found set done = true;
   open c1;
   set salida = concat(salida, '======LISTA DE EMPLEADOS=====\n\n');
   while not done do
       fetch c1 into id_empleado, nombre_empleado, apellido_empleado, puesto_empleado,
                     salario_empleado, fecha_empleado, jefe_id_empleado, pedido_id_pedido;
       if not done then
           set salida = concat(salida, 'Id: ', id_empleado, '\n');
           set salida = concat(salida, 'Nombre: ', nombre_empleado, ' ', apellido_empleado, '\n');
           set salida = concat(salida, 'Puesto: ', puesto_empleado, '\n');
           set salida = concat(salida, 'Salario: ', salario_empleado, '\n');
           set salida = concat(salida, 'Fecha de nacimiento: ', fecha_empleado, '\n');
           if jefe_id_empleado is not null then
               set salida = concat(salida, 'Id jefe: ', jefe_id_empleado, '\n');
           end if;
           set salida = concat(salida, '\n');
       end if;
   end while;
   close c1;
   select salida;
end $$
delimiter ;
call mostrar_empleados();


delimiter $$
create procedure mostrar_detalle_pedido(in pedido_id int)
begin
   declare salida varchar(2000);
   declare fecha_pedido date;
   declare estado_pedido varchar(50);
   declare total_pedido decimal(10, 2);
   select fecha, estadopedido
   into fecha_pedido, estado_pedido
   from pedido
   where idpedido = pedido_id;
   set total_pedido = calcular_precio_total_pedido(pedido_id);
   set salida = concat('====== DETALLE DEL PEDIDO ', pedido_id, ' =====\n');
   set salida = concat(salida, 'Fecha: ', fecha_pedido, '\n');
   set salida = concat(salida, 'Estado: ', estado_pedido, '\n');
   set salida = concat(salida, 'Precio total: ', total_pedido, '€\n');
   select salida;
end $$
delimiter ;
call mostrar_detalle_pedido(4);


create table if not exists registro_salarios (
   id int auto_increment primary key,
   idEmpleado INT,
   salarioAnterior decimal(10,2),
   salarioNuevo decimal(10,2),
   fecha timestamp default current_timestamp
);

delimiter $$
create trigger actualizar_salario
after update on empleados
for each row
begin
   if new.salario != old.salario then
       insert into registro_salarios (idEmpleado, salarioAnterior, salarioNuevo)
       values (new.idEmpleado, old.salario, new.salario);
   end if;
end $$
delimiter ;


update empleados
set salario = 3500.00
where idempleado = 1;


delimiter $$
create trigger precio_productos_nuevos
after update on productos
for each row
begin
   declare producto_id int;
   declare precio_anterior decimal(10, 2);
  
   set producto_id = new.idplato;
  
   select precio into precio_anterior from productos where idPlato = producto_id;
  
   insert into registro_precios_productos (idPlato, precioAnterior, precioNuevo, fechaCambio)
   values (producto_id, precio_anterior, new.precio, now());
end $$
delimiter ;

update productos
set precio = 11.99
where idplato = 745;
