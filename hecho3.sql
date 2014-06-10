use bdparo;
drop table if exists hecho3;
drop table if exists hdemografia1;
drop table if exists hdemografia2;
drop table if exists hdemografia3;
drop table if exists hdemografia4;
drop table if exists hdemografia5;
drop table if exists hdemografia6;
drop table if exists hsector1;
drop table if exists hsector2;
drop table if exists hsector3;
drop table if exists hsector4;
drop table if exists hsector5;
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

