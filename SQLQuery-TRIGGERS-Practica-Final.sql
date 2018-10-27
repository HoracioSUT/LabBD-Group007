--------------------------------------------------------------------------------------
--3 triggers
--update***instead o after

Create Trigger Tr_Pelicula_Update
on Pelicula 
after update
as
begin
Insert into Log_Pelicula (iID_PeliculaL, dFecha, vDescripción)
Select iID_Pelicula, GETDATE(), 'Se realizó una actualización en la tabla Pelicula'
From Inserted

print 'Se realizó una actualización en la tabla Pelicula'
end

Update Pelicula Set mPrecio = 130
Where iID_Pelicula = 83

Select * from Pelicula
select * from Log_Pelicula

--insert***instead o after

Create Trigger tr_Sucursal_Insert
on Sucursal
instead of insert
as
begin
	Insert into Sucursal(vSucursal,vDireccion)
	Select 'Invalido','Invalido'
	From Inserted

	print 'NO se puden agregar más sucursales en la tabla Sucursal'
end

Insert into Sucursal Values ('Cumbres de la fe','Southa #656, Col. Roble')

Select * from sucursal

--delete***instead o after

Create Trigger tr_Genero_Delete
on Genero
instead of Delete
as
begin
	Select *
	from deleted

	print 'NO se puden agregar más sucursales en la tabla Sucursal'
end

Delete from Genero 
Where vGenero = 'Acción'

Select * from Genero