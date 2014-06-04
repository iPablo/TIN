use bdparo;
drop table if exists hecho3;
create table Hecho3(
	id_hecho int(3) auto_increment,
	paro int(6) not null,
	tiempo_fk varchar(45) not null,
	ubicacion_fk int(3) not null,
	demografia_fk int(3) not null,
	primary key (id_hecho),
	foreign key (tiempo_fk) references Tiempo(id_tiempo) on delete cascade,
	foreign key (ubicacion_fk) references Ubicacion(id_ubicacion) on delete cascade,
	foreign key (demografia_fk) references Demografia(id_demografia) on delete cascade
);

