---------------------------------------------INSERT--------------------------------------------------

Insert Into Genero (vGenero) Values ('Acción')
Insert Into Genero (vGenero) Values ('Aventura')
Insert Into Genero (vGenero) Values ('Ciencia Ficciòn')
Insert Into Genero (vGenero) Values ('Comedia')
Insert Into Genero (vGenero) Values ('Anime')
Insert Into Genero (vGenero) Values ('Docuemental')
Insert Into Genero (vGenero) Values ('Drama')
Insert Into Genero (vGenero) Values ('Fantàsia')
Insert Into Genero (vGenero) Values ('Romance')
Insert Into Genero (vGenero) Values ('Suspenso')
Insert Into Genero (vGenero) Values ('Terror')
Insert Into Genero (vGenero) Values ('Miedo')
Insert Into Genero (vGenero) Values ('Familiar')

Select * From Genero

Insert Into Calidad (vCalidad) Values ('DVDRip')
Insert Into Calidad (vCalidad) Values ('Blu-Ray RIP HD 720p')
Insert Into Calidad (vCalidad) Values ('Blu-Ray RIP HD 1080p')

Select * From Calidad

Insert Into Puesto (Nombre_Puesto) Values ('Cajero')
Insert Into Puesto (Nombre_Puesto) Values ('Gerente')
Insert Into Puesto (Nombre_Puesto) Values ('Imagen')
Insert Into Puesto (Nombre_Puesto) Values ('Ayudante General')

Select * From Puesto

Insert Into Forma_Pago Values ('Efectivo')
Insert Into Forma_Pago Values ('Tarjeta de Credito')

Select * From Forma_Pago

Insert Into Domicilio Values ('BAJA CALIFORNIA','CENTRO','#142','22000','Monterrey',100)
Insert Into Domicilio Values ('P.O.','Anahuac','#106','78170','Monterrey',103)
Insert Into Domicilio Values ('GARZA NIETO','Edison','#147','64420','Monterrey',104)
Insert Into Domicilio Values ('PASEO VICTORIA','Los pinos','#178','22103','Monterrey',117)
Insert Into Domicilio Values ('PLAZA CONSTITUCION','Robles','#108','90000','Monterrey',118)
Insert Into Domicilio Values ('PABLO GARZA','Benito Juarez','#914','64530','Monterrey',120)
Insert Into Domicilio Values ('PABLO LIVAS','Alianza Unida','#361','64378','Monterrey',121)
Insert Into Domicilio Values ('CONSTITUCION','5 de Mayo','#279','87212','Monterrey',122)
Insert Into Domicilio Values ('VALLES','Niños Heroes','#938','98423','Monterrey',110)
Insert Into Domicilio Values ('MONTEMAYOR','Edison','#748','09238','Monterrey',112)

Select * From Domicilio

Insert Into Tipo (vTipo,iID_Cliente) Values ('Distinguido',1)
Insert Into Tipo (vTipo,iID_Cliente) Values ('Regular',2)
Insert Into Tipo (vTipo,iID_Cliente) Values ('Beneficioso',3)

Select * From Tipo

Insert Into Cliente Values ('MARCOS','TEJADA','BRUNO','1999/01/01 13:45:33',90,160,170)
Insert Into Cliente Values ('VICTOR MANUEL','AZNAR','BAUZA','1998/12/14 14:46:32',91,167,171)
Insert Into Cliente Values ('JULIAN','CUERVO','ANDRADES','1997/10/29 16:47:31',90,163,171)
Insert Into Cliente Values ('RICARDO','ASENCIO','MULERO','1996/09/13 18:48:30',91,160,171)
Insert Into Cliente Values ('AITOR','POMARES','MORO','1995/08/16 20:49:29',90,161,171)
Insert Into Cliente Values ('JORGE','GRANERO','LABRADOR','1994/12/19 30:50:28',90,169,171)
Insert Into Cliente Values ('PEDRO','MELENDEZ','ARTEAGA','1993/01/18 23:51:28',91,168,171)
Insert Into Cliente Values ('ANDRES','ASENCIO','MORENO','1992/04/15 25:52:27',90,167,172)
Insert Into Cliente Values ('ESPERANZA','VILLAR','MATAS','1991/08/14 26:52:26',90,164,171)
Insert Into Cliente Values ('MARIA DOLORES','ALCOLEA','VIÑA','1990/04/21 28:53:25',90,165,171)
Insert Into Cliente Values ('ISABEL','PAEZ','MARCO','1999/02/20 22:54:24',90,163,171)
Insert Into Cliente Values ('MARIA JOSEFA','PAJARES','PUERTO','1998/05/23 45:55:23',91,162,171)
Insert Into Cliente Values ('INMACULADA','RODERO','MESTRES','1997/09/22 16:56:22',91,160,171)
Insert Into Cliente Values ('GREGORIO','CANAL','MONTILLA','1996/01/26 18:57:21',90,161,171)
Insert Into Cliente Values ('MARIA JOSEFA','LLAMAZARES','LASTRA','1995/10/28 17:58:20',90,169,171)
Insert Into Cliente Values ('JUAN FRANCISCO','LEYVA','MILLAN','1994/01/29 16:59:19',90,167,171)
Insert Into Cliente Values ('MARTIN','MONJE','FERRANDEZ','1993/09/21 15:01:18',90,168,171)
Insert Into Cliente Values ('CLAUDIA','ALBARRACIN','PIQUERAS','1992/07/01 14:01:17',90,165,170)
Insert Into Cliente Values ('ANA MARIA','RIQUELME','LORCA','1991/08/23 13:02:16',91,166,170)
Insert Into Cliente Values ('MIRIAM','SEIJO','VALLEJO','1990/03/02 13:03:15',91,163,171)
Insert Into Cliente Values ('CRISTOBAL','IVARS','AVILA','2000/06/08 12:04:14',90,164,171)
Insert Into Cliente Values ('AGUSTIN','VICTORIA','BERNAD','2001/05/04 11:05:13',90,162,171)
Insert Into Cliente Values ('EMILIA','NOVILLO','BAEZ','2002/07/07 01:06:12',91,161,171)

Select * From Cliente

Insert Into Alquiler Values ('2018/09/25 01:06:12','2018/09/29 01:06:12',100,'40.50',1)
Insert Into Alquiler Values ('2018/09/25 04:09:17','2018/09/29 04:09:17',101,'40.50',1)
Insert Into Alquiler Values ('2018/10/01 01:08:12','2018/10/06 01:08:12',102,'45.50',1)
Insert Into Alquiler Values ('2018/10/01 02:07:13','2018/10/06 02:07:13',103,'45.50',1)
Insert Into Alquiler Values ('2018/10/01 03:06:14','2018/10/06 03:06:14',104,'45.50',1)
Insert Into Alquiler Values ('2018/10/01 04:05:15','2018/10/06 04:05:15',106,'45.50',1)
Insert Into Alquiler Values ('2018/10/02 05:06:16','2018/10/07 05:06:16',110,'40.50',1)
Insert Into Alquiler Values ('2018/10/02 06:07:17','2018/10/07 06:07:17',112,'40.50',2)
Insert Into Alquiler Values ('2018/10/02 07:08:18','2018/10/07 07:08:18',113,'40.50',1)
Insert Into Alquiler Values ('2018/10/02 08:09:19','2018/10/07 08:09:19',114,'40.50',1)
Insert Into Alquiler Values ('2018/10/02 09:10:20','2018/10/07 09:10:20',115,'40.50',2)
Insert Into Alquiler Values ('2018/10/03 10:11:21','2018/10/10 10:11:21',116,'47.50',1)
Insert Into Alquiler Values ('2018/10/03 11:12:22','2018/10/10 11:12:22',117,'47.50',1)
Insert Into Alquiler Values ('2018/10/03 12:13:23','2018/10/10 12:13:23',118,'47.50',2)
Insert Into Alquiler Values ('2018/10/03 13:14:24','2018/10/10 13:14:24',119,'47.50',1)
Insert Into Alquiler Values ('2018/10/03 14:15:25','2018/10/10 14:15:25',120,'47.50',1)
Insert Into Alquiler Values ('2018/10/03 15:16:26','2018/10/10 15:16:26',121,'47.50',1)
Insert Into Alquiler Values ('2018/10/04 16:17:27','2018/10/11 16:17:27',122,'47.50',2)
Insert Into Alquiler Values ('2018/10/04 17:18:28','2018/10/11 17:18:28',100,'47.50',1)
Insert Into Alquiler Values ('2018/10/04 18:19:29','2018/10/11 18:19:29',101,'47.50',1)
Insert Into Alquiler Values ('2018/10/04 19:20:30','2018/10/11 19:20:30',103,'47.50',1)

Select * From Alquiler

---------------------------------------------UPDATE--------------------------------------------------

Update Genero Set vGenero = 'Romance/Amor'
From Genero
Where iID_Genero = '48'

Select * From Genero

Update Domicilio Set vColonia = 'CABEZADA'
From Domicilio
Where iID_Direccion = 161

Update Domicilio Set vCalle = 'B. Reyes'
From Domicilio
Where vColonia LIKE '%R'

Select * From Domicilio

Update Tipo Set vTipo = 'Ordinario'
From Tipo
Where iID_Tipo = 171

Select * From Tipo

Update Cliente Set vNombre_Cliente = 'ARIEL'
From Cliente
Where vNombre_Cliente = 'MARCOS'

Update Cliente Set vApellidoM_Cliente = 'HERNÁNDEZ'
From Cliente
Where iID_Cliente = 121

Update Cliente Set vApellidoP_Cliente = 'BUENO'
From Cliente
Where iID_Cliente = 122

Select * From Cliente

Update Alquiler Set dFecha_Alquiler = '2018-03-02 11:12:22.000'
From Alquiler
Where iID_Alquiler = 122

Update Alquiler Set dFecha_Devolucion= '2018-10-02 11:12:22.000'
From Alquiler
Where iID_Alquiler = 122

Update Alquiler Set dFecha_Alquiler = '2018-03-04 13:14:24.000', dFecha_Devolucion = '2018-10-04 13:14:24.000'
From Alquiler
Where iID_Alquiler = 124

Select * From Alquiler

---------------------------------------------DELETE--------------------------------------------------

Delete From Genero
Where iID_Genero = 44

Delete From Genero
Where vGenero = 'Romance/Amor'

Select * From Genero

Delete From Calidad
Where iID_Calidad = 71

Select * From Calidad

Delete From Puesto
Where iID_Puesto = 53

Delete From Puesto
Where Nombre_Puesto = 'Imagen'

Select * From Puesto

Delete From Cliente
Where iID_Cliente = 119

Delete From Cliente
Where vApellidoP_Cliente = 'TEJADA'

Delete From Cliente
Where vNombre_Cliente = 'CLAUDIA'

Select * From Cliente

Delete From Domicilio
Where vNumero = '#178'

Select * From Domicilio

Delete From Forma_Pago
Where vForma_Pago = 'Tarjeta de Credito'

Select * From Forma_Pago