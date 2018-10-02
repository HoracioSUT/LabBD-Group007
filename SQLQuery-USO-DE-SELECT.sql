--------------------------------------------------------------------------------------------
--5 selects basicos con cambio de nombre de la columna, alias y usar funciones

Select (vNombre_Cliente + ' ' + vApellidoP_Cliente + ' ' + vApellidoM_Cliente) As 'Nombre Completo'
From Cliente As Clien

Select Count (Clien.iID_Cliente)
From Cliente As Clien

Select ('Genero: ' + Gen.vGenero) As 'Tipos de Generos'
From Genero As Gen

Select Max (vCod_Postal) 'Còdigo postal màs grande'
From Domicilio As Domi

Select Min (vNumero) 'Nùmero de calle màs chico'
From Domicilio As Domi

--------------------------------------------------------------------------------------------
--4 selects Join (cross, inner, left, right)

Select Clien.vNombre_Completo As 'Nombre de Cliente', Tip.vTipo As 'Tipo de cliente'
From Cliente As Clien
Inner Join Tipo As Tip
On Clien.iID_Tipo = Tip.iID_Tipo


Select Pago.vForma_Pago As 'Tipo de pago', Clien.vNombre_Completo As 'Nombre de Cliente'
From Forma_Pago As Pago
Left Join Cliente As Clien
On Pago.iID_Pago = Clien.iID_Pago


Select (Domi.vCalle + ' ' + Domi.vNumero + 'Col. ' +Domi.vColonia) As Direcciòn, Clien.vNombre_Completo As 'Nombre de Cliente'
From Domicilio As Domi
Right Join Cliente As Clien
On Domi.iID_Cliente = Clien.iID_Cliente


Select Clien.vNombre_Completo , Alqui.*
From Cliente As Clien, Alquiler As Alqui


Select Clien.vNombre_Completo As 'Nombre de Cliente', Tip.*
From Cliente As Clien
Full Join Tipo As Tip
On Clien.iID_Tipo = Tip.iID_Tipo

--------------------------------------------------------------------------------------------
--5 select con uso de where en diferentes tablas y campos (1 con order by)

Select Gene.vGenero As 'Genero de Peliculas' 
From Genero As Gene
Where vGenero Like '%A'


Select Cali.vCalidad As 'Calidad de Peliculas' 
From Calidad As Cali
Where vCalidad Like 'Blu-Ray %'


Select (Domi.vCalle + ' ' + Domi.vNumero + ' Col. ' + Domi.vColonia + ' # Postal ' + vCod_Postal) As 'Direcciòn de Clientes' 
From Domicilio As Domi
Where vCod_Postal > 50000


Select Clien.vNombre_Completo As 'Nombre Cliente', Clien.dFecha_Nac As 'Fecha de Nacimiento'
From Cliente As Clien
Where Clien.dFecha_Nac >= '1995-01-01 13:45:33.000'
Order By Clien.dFecha_Nac Desc


Select *
From Alquiler As Alqui
Where Alqui.Subtotal > 40.50
Order By Alqui.dFecha_Devolucion Asc

--------------------------------------------------------------------------------------------
--5 selects con uso de funciones de agregación (min, max, avg, std, count)
--2 sin group by
--3 con group by-->1 con having

Select Min (Domi.vCod_Postal) As MinimoCP
From Domicilio As Domi

Select Max (Gene.iID_Genero) As 'ID de genero Maximo'
From Genero As Gene

Select Pago.vForma_Pago As 'Forma de pago', Count (Clien.iID_Pago) As 'Cantidad de clientes'
From Forma_Pago As Pago Full Join Cliente As Clien
On pago.iID_Pago = Clien.iID_Pago
Group By Pago.vForma_Pago
Having Count (Clien.iID_Pago) > 0

Select Clien.vNombre_Completo As 'Nombre Cliente', Avg (Alqui.Subtotal) As 'Promedio del subtotal de alquiler'
From Cliente As Clien Full Join Alquiler As Alqui
On Clien.iID_Cliente =  Alqui.iID_Cliente
Group By Clien.vNombre_Completo
Having Avg (Alqui.Subtotal) > 40.00

Select Clien.vNombre_Completo As 'Nombre Cliente', Stdevp (Alqui.Subtotal) As 'Desviaciòn estandar del subtotal de alquiler'
From Cliente As Clien Full Join Alquiler As Alqui
On Clien.iID_Cliente =  Alqui.iID_Cliente
Group By Clien.vNombre_Completo
Having Stdevp (Alqui.Subtotal) > 0

Select Clien.vNombre_Completo As 'Nombre Cliente', Sum (Alqui.Subtotal) As 'Suma del subtotal de alquiler'
From Cliente As Clien Full Join Alquiler As Alqui
On Clien.iID_Cliente =  Alqui.iID_Cliente
Group By Clien.vNombre_Completo
Having Stdevp (Alqui.Subtotal) > 0

--------------------------------------------------------------------------------------------
--3 selects con join y group by

Select Clien.vNombre_Completo As 'Nombre completo del cliente', (Domi.vCalle + ' ' + Domi.vNumero + 'Col. ' +Domi.vColonia) As Direcciòn
From Cliente As Clien Inner Join Domicilio As Domi
On Clien.iID_Cliente = Domi.iID_Cliente
Group By Clien.vNombre_Completo, (Domi.vCalle + ' ' + Domi.vNumero + 'Col. ' +Domi.vColonia)

Select Clien.vNombre_Completo As 'Nombre de Cliente', Tip.vTipo As 'Tipo de cliente'
From Cliente As Clien Inner Join Tipo As Tip
On Clien.iID_Tipo = Tip.iID_Tipo
Group By Clien.vNombre_Completo, Tip.vTipo

Select Pago.vForma_Pago As 'Tipo de pago', Clien.vNombre_Completo As 'Nombre de Cliente'
From Forma_Pago As Pago Left Join Cliente As Clien
On Pago.iID_Pago = Clien.iID_Pago
Group By Pago.vForma_Pago, Clien.vNombre_Completo

--------------------------------------------------------------------------------------------
--1 select into con drop table y reinsertar las filas

Select *
Into #Genero --Tabla temporal que se crea en la sesion solamente
From Genero

Select *
From #Genero --Tabla temporal con todos los registros de Genero

Select *
From Genero

Drop Table Genero

Select*
Into Genero --Crear tabla Genero e introducir lo que haya en #Genero en la nueva tabla Genero
From #Genero