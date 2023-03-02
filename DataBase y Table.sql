Create Database PW_MySite
use PW_MySite

Create Table Usuario
(
ID Int Auto_Increment Not Null,
Nombre VarChar(50) NOT NULL,
Apellido VarChar (50) Not Null,
Fecha_Nacimiento Date Not Null,
Imagen_Perfil Blob,
Correo VarChar (100) Not Null,
Usuario Varchar (25) Not Null,
Contraseña VarChar (25) Not Null,
Fecha_Creacion Date,
ID_Estado int,
PRIMARY KEY (ID)
);

Create Table Publicacion
(
ID Int Auto_Increment  Not Null,
Titulo VarChar(30) Not Null,
Descripcion Varchar(200) Not Null,
Imagen_Publicacion Blob,
ID_Usuario int Not Null,
ID_Categoria int Not Null,
ID_Estado int not null,
PRIMARY KEY (ID)
);
Create Table Categoria
(
ID int Auto_Increment Not Null,
Nombre Varchar (15),
PRIMARY KEY (ID)
);
Create Table Estado
(
ID int not null auto_increment,
Estatus varchar (30),
Primary key (Id)
);

ALTER TABLE Publicacion
Add FOREIGN KEY (ID_Usuario)
REFERENCES Usuario(ID);

ALTER TABLE Publicacion
Add FOREIGN KEY (ID_Categoria)
REFERENCES Categoria(ID);

Alter Table Publicacion
Add Foreign Key (ID_Estado)
References Estado(Id);

Alter Table Usuario
Add Foreign Key (ID_Estado)
References Estado(Id);