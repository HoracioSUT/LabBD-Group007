USE [Videos]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [CK__Pelicula__mPreci__4CA06362]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [CK__Pelicula__iAño_E__4BAC3F29]
GO
ALTER TABLE [dbo].[Forma_Pago] DROP CONSTRAINT [CK__Forma_Pag__vForm__4F7CD00D]
GO
ALTER TABLE [dbo].[Clasificación] DROP CONSTRAINT [CK__Clasifica__cClas__5441852A]
GO
/****** Object:  Index [P_PeliculaPrecio]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [P_PeliculaPrecio] ON [dbo].[Pelicula]
GO
/****** Object:  Index [P_PeliculaNombre]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [P_PeliculaNombre] ON [dbo].[Pelicula]
GO
/****** Object:  Index [G_Genero]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [G_Genero] ON [dbo].[Genero]
GO
/****** Object:  Index [P_Forma_Pago]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [P_Forma_Pago] ON [dbo].[Forma_Pago]
GO
/****** Object:  Index [c_ClienteApPa]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [c_ClienteApPa] ON [dbo].[Cliente]
GO
/****** Object:  Index [C_ClienteApMate]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [C_ClienteApMate] ON [dbo].[Cliente]
GO
/****** Object:  Index [C_Clasificación]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP INDEX [C_Clasificación] ON [dbo].[Clasificación]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP TABLE [dbo].[Genero]
GO
/****** Object:  Table [dbo].[Forma_Pago]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP TABLE [dbo].[Forma_Pago]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Clasificación]    Script Date: 07/09/2018 02:15:10 p. m. ******/
DROP TABLE [dbo].[Clasificación]
GO
/****** Object:  Table [dbo].[Clasificación]    Script Date: 07/09/2018 02:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificación](
	[iID_Clasifiacion] [int] IDENTITY(60,1) NOT NULL,
	[cClasifiacion] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Clasifiacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/09/2018 02:15:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iID_Cliente] [int] IDENTITY(30,1) NOT NULL,
	[vNombre_Cliente] [varchar](50) NULL,
	[vApellidoP_Cliente] [varchar](50) NULL,
	[vApellidoM_Cliente] [varchar](50) NULL,
	[vNombre_Completo]  AS (((([vNombre_Cliente]+' ')+[vApellidoM_Cliente])+' ')+[vApellidoM_Cliente]),
	[dFecha_Nac] [datetime] NULL,
	[iNum_Contacto] [int] NULL,
	[vDireccion] [varchar](100) NULL,
	[bCliente_Distinguido] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forma_Pago]    Script Date: 07/09/2018 02:15:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forma_Pago](
	[iID_Pago] [int] IDENTITY(100,1) NOT NULL,
	[vForma_Pago] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 07/09/2018 02:15:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[iID_Genero] [int] IDENTITY(10,1) NOT NULL,
	[vGenero] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 07/09/2018 02:15:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[iID_Pelicula] [int] IDENTITY(50,1) NOT NULL,
	[vNombre_Peli] [varchar](50) NULL,
	[iAño_Estreno] [int] NULL,
	[mPrecio] [money] NULL,
	[iImagen] [image] NULL,
	[vDuración] [varchar](20) NULL,
	[tDescripción] [text] NULL,
	[fRaiting] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [C_Clasificación]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [C_Clasificación] ON [dbo].[Clasificación]
(
	[cClasifiacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [C_ClienteApMate]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [C_ClienteApMate] ON [dbo].[Cliente]
(
	[vApellidoM_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [c_ClienteApPa]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [c_ClienteApPa] ON [dbo].[Cliente]
(
	[vApellidoP_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [P_Forma_Pago]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [P_Forma_Pago] ON [dbo].[Forma_Pago]
(
	[vForma_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [G_Genero]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [G_Genero] ON [dbo].[Genero]
(
	[vGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [P_PeliculaNombre]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [P_PeliculaNombre] ON [dbo].[Pelicula]
(
	[vNombre_Peli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [P_PeliculaPrecio]    Script Date: 07/09/2018 02:15:11 p. m. ******/
CREATE NONCLUSTERED INDEX [P_PeliculaPrecio] ON [dbo].[Pelicula]
(
	[mPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clasificación]  WITH CHECK ADD CHECK  (([cClasifiacion]='A' OR [cClasifiacion]='B' OR [cClasifiacion]='C'))
GO
ALTER TABLE [dbo].[Forma_Pago]  WITH CHECK ADD CHECK  (([vForma_Pago]='Efectivo' OR [vForma_Pago]='Tarjeta de credito'))
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD CHECK  (([iAño_Estreno]>=(1990)))
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD CHECK  (([mPrecio]>(30.00)))
GO
