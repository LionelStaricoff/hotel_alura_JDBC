CREATE DATABASE IF NOT EXISTS hotel
 DEFAULT CHARACTER SET UTF8 COLLATE UTF8_SPANISH_CI;
 
 USE hotel;
 
 describe  hotel;
 
  CREATE TABLE reservas (
     id INTEGER PRIMARY KEY AUTO_INCREMENT,
     fechaEntrada DATE,
     apellido VARCHAR (40),
     fecha_de_nacimiento DATE,
     fechaSalida DATE,
     valor INTEGER,
     formaPago VARCHAR (40)
);


 CREATE TABLE huespedes (
     id INTEGER PRIMARY KEY AUTO_INCREMENT,
     nombre VARCHAR (40),
     apellido VARCHAR (40),
     fecha_de_nacimiento DATE,
     nacionalidad VARCHAR (40),
     telefono VARCHAR (40),
     id_reserva INTEGER,
     FOREIGN KEY (id_reserva) REFERENCES reservas (id)
);

SELECT * FROM huespedes;
SELECT * FROM reservas;