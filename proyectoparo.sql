create database bdparo;
use bdparo;
set foreign_key_checks=0;

drop table if exists hecho1;
drop table if exists hecho2;
drop table if exists Tiempo;
drop table if exists Ubicacion;
drop table if exists Sector;
drop table if exists Demografia;

create table Tiempo(
	id_tiempo varchar(45) primary key,
	mes varchar(45) not null,
	anno varchar(45) not null
);

create table Ubicacion(
	id_ubicacion int(3) primary key,
	ciudad varchar(48) not null,
	provincia varchar(45) not null,
	ca varchar(45) not null
);

create table Demografia(
	id_demografia int(3) primary key,
	sexo_edad varchar(45) not null
);

create table Sector(
	id_sector int(3) primary key,
	servicio varchar(45) not null
);


create table Hecho1(
	id_hecho int(3) auto_increment,
	paro int(6) not null,
	tiempo_fk varchar(45) not null,
	ubicacion_fk int(3) not null,
	sector_fk int(3) not null,
	fecha_insercion varchar(30) not null,
	primary key (id_hecho),
	foreign key (tiempo_fk) references Tiempo(id_tiempo) on delete cascade,
	foreign key (ubicacion_fk) references Ubicacion(id_ubicacion) on delete cascade,
	foreign key (sector_fk) references Sector(id_sector) on delete cascade
);

create table Hecho2(
	id_hecho int(3) auto_increment,
	paro int(6) not null,
	tiempo_fk varchar(45) not null,
	ubicacion_fk int(3) not null,
	demografia_fk int(3) not null,
	fecha_insercion varchar(30) not null,
	primary key (id_hecho),
	foreign key (tiempo_fk) references Tiempo(id_tiempo) on delete cascade,
	foreign key (ubicacion_fk) references Ubicacion(id_ubicacion) on delete cascade,
	foreign key (demografia_fk) references Demografia(id_demografia) on delete cascade
);



