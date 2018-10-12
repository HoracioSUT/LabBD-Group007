-----------------------------------------------------------------------------------
--3 Subconsultas

--1 subconsulta de columna
Select mSueldo, (
					Select count(mSueldo) 
					From Empleado as E 
					Where E.mSueldo=Empleado.mSueldo
					) as 'Cantidad de sueldos'
	From Empleado
	Group by mSueldo
	Order by mSueldo desc


--1 subconsulta tabla

Select *
From
	(Select vMunicipio As 'Municipio', count (vMunicipio) As 'Cantidad'
		From Domicilio
		Group by vMunicipio
	) As Municipio


--1 de la que sea (columna, tabla)

Select iAño_Estreno, (
					Select count(iAño_Estreno) 
					From Pelicula as P
					Where P.iAño_Estreno = Pelicula.iAño_Estreno
					) as 'Cantidad de peliculas'
	From Pelicula
	Group by iAño_Estreno
	Order by iAño_Estreno desc

select iAño_Estreno, count (iAño_Estreno) as 'cantidad de peliculas'
from Pelicula
group by iAño_Estreno
order by iAño_Estreno desc

select mSueldo, count (mSueldo) as 'cantidad de sueldos'
from Empleado
group by mSueldo
order by mSueldo desc

select vMunicipio As 'Municipio', count (vMunicipio) as 'cantidad'
from Domicilio
group by vMunicipio

-----------------------------------------------------------------------------------
--1 subconsulta with

with SumaPuntuaje As (
select fPuntuaje, count(fPuntuaje) as [Cantidad]
	From Pelicula
	group by fPuntuaje)

select *
from SumaPuntuaje

-----------------------------------------------------------------------------------
--5 Vistas Deben ser reportes de su aplicacion
	--Join (cualquiera)
	--Función de Agregacion (cualquiera)

Create View ReporteMensualEmpleVentas
As select Emple.vNombre_Completo as [Nombre Empleado], sum (Alqui.mTotal) as [Total de ventas]
from Empleado as Emple Inner join Alquiler as Alqui 
on Emple.iID_Empleado = Alqui.iID_Empleado
Where MONTH(Alqui.dFecha_Alquiler) = MONTH(GETDATE()) --convierte la fehcas y ha ambas les trae el mes
group by Emple.vNombre_Completo


select * From ReporteMensualEmpleVentas


Create View ReporteMensualPeli
As select Peli.vNombre_Peli as [Nombre de pelicula] , sum (AD.iCantidad) as [Total de rentas]
from Alquiler_Detalle as AD Inner join Pelicula as Peli 
on ad.iID_Pelicula = Peli.iID_Pelicula, Alquiler
Where MONTH(Alquiler.dFecha_Alquiler) = MONTH(GETDATE())
group by Peli.vNombre_Peli


select * From ReporteMensualPeli


Create View ReporteMensualSucursal
As select Sucu.vSucursal as [Nombre de sucursal] , sum (Alqui.mTotal) as [Total de rentas]
from Sucursal as Sucu Inner join Alquiler_Detalle as AlquiD 
on sucu.iID_Sucursal = AlquiD.iID_Sucursal, Alquiler as Alqui
Where MONTH(Alqui.dFecha_Alquiler) = MONTH(GETDATE())
group by Sucu.vSucursal


select * From ReporteMensualSucursal


Create View ReporteMensualPeliVendida
As select top 1 Peli.vNombre_Peli as [Nombre de pelicula] , Max (Alqui.mTotal) as [Mas vendida]
from Pelicula as Peli Inner join Alquiler_Detalle as AlquiD 
on Peli.iID_Pelicula = AlquiD.iID_Pelicula, Alquiler as Alqui
Where MONTH(Alqui.dFecha_Alquiler) = MONTH(GETDATE())
group by Peli.vNombre_Peli


select * From ReporteMensualPeliVendida


Create View ReporteMensualEmpleVentasMax
As select Emple.vNombre_Completo as [Nombre Empleado], sum (AlquiD.iCantidad) as [Cantidad de ventas]
from Empleado as Emple Inner join Alquiler_Detalle as AlquiD
on Emple.iID_Empleado = AlquiD.iID_Empleado, Alquiler as Alqui
Where MONTH(Alqui.dFecha_Alquiler) = MONTH(GETDATE()) --convierte la fehcas y ha ambas les trae el mes
group by Emple.vNombre_Completo


select * From ReporteMensualEmpleVentasMax

------------------------------------------------------------------------------------
--1 consulta dinamica

declare @queryCliente nvarchar(MAX)
set @queryCliente = 'Select vNombre_Completo From Cliente'

exec (@queryCliente)



declare @queryCliente2 nvarchar(MAX)
declare @nomclien nvarchar(MAX) = 'iID_Cliente from Empleado--'
set @queryCliente2 = 'select vNombre_Completo as ' + @nomclien + ' from Cliente'

exec (@queryCliente2)



declare @queryCliente2 nvarchar(MAX)
declare @nomclien nvarchar(MAX) = 'vNombre_Cliente, *'
set @queryCliente2 = 'select ' + @nomclien + ' from Cliente'

exec (@queryCliente2)