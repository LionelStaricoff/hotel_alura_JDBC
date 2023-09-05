CREATE DATABASE IF NOT EXISTS hotelalura
 DEFAULT CHARACTER SET UTF8 COLLATE UTF8_SPANISH_CI;
 
 USE hotelalura;
 

  CREATE TABLE reservas (
     id INTEGER PRIMARY KEY AUTO_INCREMENT,
     fecha_entrada DATE,
     fecha_salida DATE,
     valor VARCHAR (50),
     formaPago VARCHAR (40)
);


 CREATE TABLE huespedes (
     id INTEGER PRIMARY KEY AUTO_INCREMENT,
     nombre VARCHAR (40),
     apellido VARCHAR (40),
     fecha_nacimiento DATE,
     nacionalidad VARCHAR (40),
     telefono VARCHAR (40),
     idReserva INTEGER,
     FOREIGN KEY (idReserva) REFERENCES reservas (id)
);

SELECT * FROM huespedes;
SELECT * FROM reservas;
show reservas;