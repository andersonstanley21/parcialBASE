Create database VeterinariaBD;
use VeterinariaBD

create table municipio(
mumId int primary key identity (1,1) not null,
municipioN nvarchar(100) not null unique
);

create table departamento(
depId int primary key identity (1,1) not null,
departamento nvarchar(50) not null unique,
municipioN int foreign key references  municipio(mumId) not null
);


create table direccion(
dirId int primary key identity (1,1) not null,
direccion nvarchar(50) not null,
departamento int foreign key references departamento(depId) not null,
codigoPostal int not null
);

create table Duenomascota(
dmID int primary key identity (1,1) not null,
NumIdentidad int not null unique,
nombre nvarchar(50) not null,
apellido nvarchar(50) not null,
direccion int foreign key references direccion(dirId) not null,
telefono int
);

create table TipoMascota(
tmId int primary key identity (1,1) not null,
tipoMascotaN nvarchar(50) not null,
);

create table Raza(
razaId int primary key identity (1,1) not null,
razaN nvarchar(50)
);

create table Mascota(
masId int primary key identity (1,1) not null,
nombre nvarchar(50) not null,
tipoMascota varchar(50) not null,
raza varchar(50) not null,
Observacion nvarchar(255) not null
);

  create table ingresos(
  id_ingresos int primary key identity (1,1)not null,
  motivos varchar (20)not null,
  fecha_de_ingresos int not null,
  obserbaciones  varchar (50) not null,);


  create table veterinario(
  cod_veterinario int primary key identity (1,1) not null,
  nombre varchar (50) not null,
  Apellidos varchar (50) not null,
  cargo varchar (50) not null,
  );
  
insert into Veterinario(Nombre,Apellidos, Cargo) values (' lucia',' cardoza', 'Veterinario');
insert into Veterinario(Nombre,Apellidos, Cargo) values (' carlos',' lopez', 'Veterinario');
insert into Veterinario(Nombre,Apellidos, Cargo) values (' Rene',' guardado', 'Veterinario');
insert into Veterinario(Nombre,Apellidos, Cargo) values (' marcos',' urbina', 'Veterinario');


insert into Mascota(nombre,tipoMascota,raza,Observacion)values('pelusa','perro','pidbull','sarro')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('pepe','gato','pidbull','corte de cr7')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('pancho','perico','pidbull','baño')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('fido','perro','pidbull','ninguna')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('dante','perro','pidbull','obesidad')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('chico','gato','angora','cambio de corte')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('chili','conejo','criollo','bsño')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('tobi','raton','hanster','cuido')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('roco','perro','pidbull','ingreso')
insert into Mascota(nombre,tipoMascota,raza,Observacion)values('lucas','loro','pidbull','ninguna')

insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('obsidad',12,'ninguna')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('dolores',10,'ninguna')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('baño',11,'ninguna')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('cuido',15,'ninguna')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('corte de cabelloo',20,'ninguna')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('ingreso',14,'agotado')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('diarrea',13,'desidratado')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('obesidad',11,'cansado')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('tos',20,'tos')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('ulsera',18,'inflamacion')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('hernia',31,'inflamacion')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('quebradura',28,'quebraduras')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('manchas',16,'acaros')
insert into ingresos(motivos,fecha_de_ingresos,obserbaciones)values('obsidad',12,'cansancio')



