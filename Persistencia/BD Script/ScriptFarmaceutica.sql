use master
go

if exists(select * from sysdatabases where sysdatabases.name = 'prodFarmaceutica')
begin
	drop database prodFarmaceutica2
end
go

create database prodFarmaceutica6
go

use prodFarmaceutica6
go

create table usuario
(
	nombreusuario varchar(20) primary key,
	contrasena varchar(20) not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null
)
go

create table empleado
(
	nombreusuario varchar(20) not null,
	horainicio datetime not null,
	horafin datetime not null,
	foreign key (nombreusuario) references usuario
)
go

create table cliente
(
	nombreusuario varchar(20) primary key,
	direccion varchar(50) not null,
	telefono int not null,
	foreign key (nombreusuario) references usuario
)
go

create table farmaceutica
(
	ruc int primary key,
	nombre varchar(20) not null,
	correo varchar(20),
	direccion varchar(50)
)
go

create table medicamento
(
	codigo int,
	ruc int,
	nombre varchar(20) not null,
	descripcion varchar(100),
	precio float not null,
	primary key (codigo,ruc),
	foreign key (ruc) references farmaceutica
)
go

create table pedido
(
	numero int identity,
	nombreusuario varchar(20) not null,
	codigo int not null,
	ruc int not null,
	cantidad int not null,
	estado varchar(20) not null,
	primary key (numero),
	foreign key (nombreusuario) references cliente,
	foreign key (codigo,ruc) references medicamento(codigo,ruc)
)
go
----------------------------STORED PROCEDURES--------------------------------------




-----------------------------------------------------------------------------------
--------------------------------EMPLEADO-------------------------------------------
-----------------------------------------------------------------------------------


create proc agregarempleado @nombre varchar(20), @apellido varchar(20), 
@nombreusuario varchar(20), @contrasena varchar(20), @horainicio datetime, @horafin datetime as
begin
	if exists(select * from usuario where nombreusuario=@nombreusuario)
	begin
		if exists(select nombreusuario from empleado p where p.nombreusuario=@nombreusuario)
		begin
			return -1 --ya existe empleado
		end
		return -2 --ya existe un cliente
	end
		declare @error int
		begin tran
		insert into usuario values(@nombreusuario,@contrasena,@nombre,@apellido)
		set @error = @@ERROR
		insert into empleado values(@nombreusuario,@horainicio,@horafin)
		set @error = @error+@@ERROR
		if(@error = 0)
		begin
			commit tran
			return 1
		end
		else
		begin
			rollback tran
			return -3
		end
end
go


create proc modificarempleado @nombreusuario varchar(20), @contrasena varchar(20),
@nombre varchar(20), @apellido varchar(20),@horainicio datetime, @horafin datetime as
begin
	if not exists(select * from empleado where empleado.nombreusuario=@nombreusuario)
	begin
		return -1 --no existe el empleado
	end
	declare @error int
	begin tran
	update usuario set nombre = @nombre, apellido = @apellido, contrasena = @contrasena where usuario.nombreusuario=@nombreusuario
	set @error =@@ERROR
	update empleado set horainicio=@horainicio, horafin=@horafin where empleado.nombreusuario = @nombreusuario
	set @error = @error+@@ERROR
	if(@error = 0)
	begin
		commit tran
		return 1 --modificado correctamente
	end
	else
	begin
		rollback tran
		return -1
	end
end
go



create proc eliminarempleado @nombreusuario varchar(20) as
begin
	if not exists(select * from usuario where nombreusuario=@nombreusuario)
	begin
		return -1 --cliente no existe
	end
	declare @error int
	begin tran
	delete from empleado where nombreusuario = @nombreusuario
	set @error = @@ERROR
	delete from usuario where nombreusuario = @nombreusuario
	set @error = @@ERROR
	if(@error = 0)
	begin
		commit tran
		return 1 --eliminado correctamente
	end
	else
	begin
		rollback tran
		return -1 --error al intentar eliminar
	end
end
go






create proc buscarempleado @nombreusuario varchar(20) as
begin
	select * from usuario inner join empleado on empleado.nombreusuario = usuario.nombreusuario 
	where empleado.nombreusuario=@nombreusuario
end
go







create proc logueoempleado @nombreusuario varchar(20), @contrasena varchar(20) as
begin
	select * from usuario u inner join empleado e on e.nombreusuario = u.nombreusuario
	where e.nombreusuario=@nombreusuario and u.contrasena = @contrasena
end
go








-----------------------------------------------------------------------------------
---------------------------CLIENTE-------------------------------------------------
-----------------------------------------------------------------------------------







create proc agregarcliente @nombreusuario varchar(20), @contrasena varchar(20), 
@nombre varchar(20), @apellido varchar(20), @direccion varchar(50), @telefono int as
begin
	if exists(select * from usuario where nombreusuario=@nombreusuario)
	begin
		if exists(select nombreusuario from cliente c where c.nombreusuario=@nombreusuario)
		begin
			return -1 --ya existe cliente
		end
		return -2 --ya existe un empleado
	end
	declare @error int
	begin tran
	insert into usuario values(@nombreusuario,@contrasena,@nombre,@apellido)
	set @error = @@ERROR
	insert into cliente values(@nombreusuario,@direccion,@telefono)
	set @error = @error+@@ERROR
	if(@error = 0)
	begin
		commit tran
		return 1 --agregado correctamente
	end
	else
	begin
		rollback tran 
		return -3 --error al intentar agregar
	end
end
go








create proc modificarcliente @nombreusuario varchar(20),@contrasena varchar(20),
@nombre varchar(20), @apellido varchar(20),@direccion varchar(50),@telefono int as
begin
	if not exists(select nombreusuario from usuario where nombreusuario = @nombreusuario)
	begin
		return -1 --cliente no existe
	end
	declare @error int
	begin tran
	update usuario set contrasena=@contrasena,nombre=@nombre,apellido=@apellido where nombreusuario=@nombreusuario
	set @error = @@error
	update cliente set direccion=@direccion,telefono=@telefono where nombreusuario=@nombreusuario
	set @error = @error+@@error
	if(@error = 0)
	begin
		commit tran
		return 1 --cliente modificado
	end
	else
	begin
		rollback tran
		return -2 --error al intentar modificar
	end
end
go






create proc eliminarcliente @nombreusuario varchar(20) as
begin
	if not exists(select nombreusuario from usuario where nombreusuario = @nombreusuario)
	begin
		return -1 --cliente no existe
	end
	declare @error int
	begin tran
	delete from cliente where nombreusuario=@nombreusuario
	set @error=@@ERROR
	delete from usuario where nombreusuario=@nombreusuario
	set @error=@@ERROR
	if(@error = 0)
	begin
		commit tran
		return 1 --eliminado correctamente
	end
	else
	begin
		rollback tran
		return -2 --error al intentar elimianr
	end
end
go






create proc buscarcliente @nombreusuario varchar(20) as
begin
	select * from usuario inner join cliente on cliente.nombreusuario = usuario.nombreusuario 
	where cliente.nombreusuario=@nombreusuario
end
go






create proc logueocliente @nombreusuario varchar(20), @contrasena varchar(20) as
begin
	select * from usuario u inner join cliente c on u.nombreusuario=c.nombreusuario where 
	c.nombreusuario = @nombreusuario and u.contrasena=@contrasena
end
go








-----------------------------------------------------------------------------------
---------------------------FARMACEUTICAS-------------------------------------------
-----------------------------------------------------------------------------------







create proc agregarfarmaceutica @ruc int,@nombre varchar(20),@correo varchar(20),
								@direccion varchar(50) as
begin
	if exists(select * from farmaceutica where ruc=@ruc)
	begin
		return -1 --la farmaceutica ya existe
	end

	insert into farmaceutica values(@ruc,@nombre,@correo,@direccion)
	if(@@ERROR = 0)
	begin
		return 1 --agregada correctamente
	end
	else
	begin
		return -2 --error al intentar agregar farmaceutica
	end
end
go





create proc modificarfarmaceutica @ruc int,@nombre varchar(20),@correo varchar(20),
								@direccion varchar(50) as
begin
	if not exists(select * from farmaceutica where ruc=@ruc)
	begin
		return -1 --la farmaceutica no existe
	end

	update farmaceutica set nombre=@nombre, correo=@correo, direccion=@direccion where ruc=@ruc
	if(@@ERROR = 0)
	begin
		return 1 --modificada correctamente
	end
	else
	begin
		return -2 --error al intentar modificar farmaceutica
	end
end
go






create proc eliminarfarmaceutica @ruc int as
begin
	if exists(select * from pedido p where p.ruc = @ruc)
	begin
		return -1 --no se elimina tiene pedidos
	end
	declare @error int
	begin tran
	delete from farmaceutica where ruc=@ruc
	set @error = @@ERROR
	delete from medicamento where ruc=@ruc
	set @error = @error+@@ERROR
	if(@error = 0)
	begin
		commit tran
		return 1 --eliminado correctamente
	end
	else
	begin
		rollback tran
		return -2 --error al intentar eliminar
	end
end
go





create proc buscarfarmaceutica @ruc int as
begin
	select * from farmaceutica where ruc = @ruc
end
go






create proc listarfarmaceuticas as
begin
	select * from farmaceutica
end
go







------------------------------------------------------------------------
------------------------MEDICAMENTOS------------------------------------
------------------------------------------------------------------------








create proc agregarmedicamento @codigo int, 
				@ruc int, @nombre varchar(20),@descripcion varchar(100),@precio float as
begin
	if not exists(select * from farmaceutica where ruc =@ruc)
	begin
		return 0 --no existe el proveedor
	end

	if exists(select * from medicamento where codigo = @codigo and ruc = @ruc)
	begin
		return -1 --el medicamento ya existe
	end

	insert into medicamento values(@codigo,@ruc,@nombre,@descripcion,@precio)
	if(@@ERROR=0)
	begin
		return 1 --agregado correctamente
	end
	else
	begin
		return -2 --error al agregar
	end
end
go






create proc modificarmedicamento @codigo int, 
				@ruc int, @nombre varchar(20),@descripcion varchar(100),@precio float as
begin
	if not exists(select * from medicamento where codigo=@codigo)
	begin
		return -1 --no existe
	end
	if exists(select ruc from farmaceutica where ruc=@ruc)
	begin
		update medicamento set  nombre=@nombre,descripcion=@descripcion,precio=@precio
		if(@@ERROR=0)
		begin
			return 1 --modificado
		end
		else
		begin
			return -2 --error
		end
	end
end
go






create proc eliminarmedicamento @codigo int,@ruc int as
begin
	if not exists(select * from medicamento where codigo=@codigo and ruc=@ruc)
	begin
		return -1 --no existe
	end
	declare @error int
	begin tran
	delete from pedido where codigo=@codigo and ruc=@ruc
	set @error=@@ERROR
	delete from medicamento where codigo=@codigo and ruc=@ruc
	set @error=@error+@@ERROR
	if(@error=0)
	begin
		commit tran
		return 1 --eliminado
	end
	else
	begin
		rollback tran
		return -2 --error al eliminar
	end
end
go







create proc buscarmedicamento @codigo int, @ruc int as
begin
	select * from medicamento where codigo=@codigo and ruc=@ruc
end
go





create proc listarmedicamentos @ruc int as
begin
	select * from medicamento where ruc=@ruc
end
go





create proc listamedicamentos as
begin
	select * from medicamento
	order by medicamento.nombre 
end
go











-----------------------------------------------------------------------------
----------------------------PEDIDOS------------------------------------------
-----------------------------------------------------------------------------









create proc realizarpedido @nombreusuario varchar(20), @codigo int,@ruc int,@cantidad int as
begin
	if not exists(select nombreusuario from cliente where nombreusuario=@nombreusuario)
	begin
		return -1 --no existe cliente
	end
	if not exists(select codigo from medicamento where codigo=@codigo)
	begin
		return -2 --no existe medicamento
	end
	if not exists(select ruc from farmaceutica where ruc=@ruc)
	begin
		return -3 --no existe farmaceutica
	end

	insert into pedido values(@nombreusuario,@codigo,@ruc,@cantidad,'GENERADO')
	if(@@ERROR=0)
	begin
		return 1 --agregado
	end
	else
	begin
		return -4 --error al intentar alta
	end
end
go







alter proc cambiarestadopedido @numero int as
begin
	if not exists(select numero from pedido p where p.numero=@numero)
	begin
		return -1 --pedido no existe
	end
	if((select estado from pedido p where p.numero=@numero) = 'ENTREGADO')
	begin
		return -2 --el pedido fue entregado
	end

	if((select estado from pedido p where p.numero=@numero) = 'GENERADO')
	begin 
		update pedido set estado='ENVIADO' where pedido.numero=@numero
		if(@@ERROR=0)
		begin
			return 1 --pedido actualizado
		end
		return -3 --error
	end

	if((select estado from pedido p where p.numero=@numero) = 'ENVIADO')
	begin 
		update pedido set estado='ENTREGADO' where pedido.numero=@numero
		if(@@ERROR=0)
		begin
			return 1 --pedido actualizado
		end
		return -1 --error
	end
end
go







create proc eliminarpedido @numero int as
begin
	if not exists(select numero from pedido p where p.numero=@numero)
	begin
		return -1 --no existe el pedido
	end
	if not((select estado from pedido p where p.numero =@numero)='GENERADO')
	begin
		return -2 --Pedido fue enviado y/o entregado
	end
	delete from pedido where pedido.numero=@numero
	if(@@ERROR=0)
	begin
		return 1 --eliminado
	end
	return -3 --error
end
go







create proc buscarpedido @numero int as
begin
	select * from pedido p where p.numero=@numero
end
go







create proc listarpedidosxcliente @nombreusuario varchar(20) as
begin
	select * from pedido p where p.nombreusuario=@nombreusuario and p.estado = 'GENERADO'
end
go





create proc listarpedidos as
begin
	select * from pedido where pedido.estado = 'GENERADO' or pedido.estado = 'ENVIADO'
end
go




create proc listarpedidosgenerados @codigo int, @ruc int as
begin
	select * from pedido p where p.codigo = @codigo and p.ruc = @ruc and p.estado = 'GENERADO'
	order by p.codigo
end
go


create proc listarpedidosentregados @codigo int, @ruc int as
begin
	select * from pedido p where p.codigo = @codigo and p.ruc = @ruc and p.estado = 'ENTREGADO'
	order by p.codigo
end
go

create proc listartodos @codigo int, @ruc int as
begin
	select * from pedido p where p.codigo = @codigo and p.ruc = @ruc
	order by p.codigo 
end







