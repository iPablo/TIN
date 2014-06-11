use bdparo;
set foreign_key_checks=0;
drop table if exists hecho3;
drop table if exists hecho4;
create table Hecho3(
	id_hecho int(3) auto_increment,
	paro int(6) not null,
	tiempo_fk varchar(45) not null,
	ubicacion_fk int(3) not null,
	demografia_fk int(3) not null,
	fecha_insercion varchar(30),
	primary key (id_hecho),
	foreign key (tiempo_fk) references Tiempo(id_tiempo) on delete cascade,
	foreign key (ubicacion_fk) references Ubicacion(id_ubicacion) on delete cascade,
	foreign key (demografia_fk) references Demografia(id_demografia) on delete cascade
);
drop table if exists Ubicacion;
create table Ubicacion(
	id_ubicacion int(3) primary key,
	ciudad varchar(48) not null,
	provincia varchar(45) not null,
	ca varchar(45) not null
);
drop table if exists Tiempo;

create table Tiempo(
	id_tiempo varchar(45) primary key,
	mes varchar(45) not null,
	anno varchar(45) not null
);

drop table if exists Sector;
create table Sector(
	id_sector int(3) primary key,
	servicio varchar(45) not null
);

drop table if exists demografia;
create table Demografia(
	id_demografia int(3) primary key,
	sexo_edad varchar(45) not null
);
create table Hecho4(
	id_hecho int(3) auto_increment,
	paro int(6) not null,
	tiempo_fk varchar(45) not null,
	ubicacion_fk int(3) not null,
	demografia_fk int(3) not null,
	fecha_insercion varchar(30),
	primary key (id_hecho),
	foreign key (tiempo_fk) references Tiempo(id_tiempo) on delete cascade,
	foreign key (ubicacion_fk) references Ubicacion(id_ubicacion) on delete cascade,
	foreign key (demografia_fk) references Demografia(id_demografia) on delete cascade
);
