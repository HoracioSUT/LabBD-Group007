-----------------------------------------------------------------------------------
--1 Procedimiento tipo scrip (borrar y crear tabla)

create procedure ScripBorrarCrearTablaGenero
(@parametroTabla nvarchar(100))
as
begin

	declare @variable nvarchar(100)
	set @variable = @parametroTabla
	if @variable = 'Genero'
	begin

	Select *
	Into #Genero --Tabla temporal que se crea en la sesion solamente
	From Genero;

	Drop Table Genero;

	Select*
	Into Genero --Crear tabla Genero e introducir lo que haya en #Genero en la nueva tabla Genero
	From #Genero;
	end

end

exec ScripBorrarCrearTablaGenero @parametroTabla = 'Genero'
GO

-----------------------------------------------------------------------------------
--5 Procedimientos almacenados donde consulten sus reportes y filtren con parametros

create procedure ProcedimientoEmpleVentas 
(@parametro nvarchar(100))
as
begin

	select * 
	From ReporteMensualEmpleVentas
	where [Total de ventas] >  @parametro

end

exec ProcedimientoEmpleVentas  @parametro = 1000
GO

-- vista usada --->select * From ReporteMensualEmpleVentas


create procedure ProcedimientoPeli
(@parametro nvarchar(100))
as
begin

	select * 
	From ReporteMensualPeli
	where [Nombre de pelicula] like '%' + @parametro + '%'

end

exec ProcedimientoPeli  @parametro = 'z'
GO

-- vista usada --->select * From ReporteMensualPeli


create procedure ProcedimientoSucursal
(@parametro nvarchar(100))
as
begin

	select * 
	From ReporteMensualSucursal
	where [Total de rentas] > @parametro and [Total de rentas] < 3000

end

exec ProcedimientoSucursal  @parametro = 1800
GO

-- vista usada --->select * From ReporteMensualSucursal


create procedure ProcedimientoPeliVendida
(@parametro nvarchar(100))
as
begin

	select * 
	From ReporteMensualPeliVendida
	where [Nombre de pelicula] Like '['+@parametro+']%'

end

exec ProcedimientoPeliVendida  @parametro = 'a-z'
GO

-- vista usada --->select * From ReporteMensualPeliVendida


create procedure ProcedimientoEmpleVentasMax
(@parametro nvarchar(100))
as
begin

	select * 
	From ReporteMensualEmpleVentasMax
	where [Nombre Empleado] Like @parametro +'%'

end

exec ProcedimientoEmpleVentasMax  @parametro = 'jesse'
GO

-- vista usada --->select * From ReporteMensualEmpleVentasMax

-----------------------------------------------------------------------------------
--1 funcion (de lo que sea)

create function ClasificacionPelicula (@parametro int)
returns varchar(50)
as
begin
	declare @clasificacion varchar(50)
	declare @puntuaje double precision

	Select @puntuaje = sum(fPuntuaje*1)
	From Pelicula as peli
	Where iID_Pelicula = @parametro
	If(@puntuaje>8.5) begin
	Select @clasificacion='Buena pelicula'
	end
	else begin
	Select @clasificacion='Mala pelicula'
	end
	Return @clasificacion

end

Select dbo.ClasificacionPelicula(80) as Critica

select * from pelicula




create function Suma(
@parametro int
) returns int
as
begin
	return 100 + @parametro
end

Select dbo.Suma(20) as Suma