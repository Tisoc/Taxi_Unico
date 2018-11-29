USE TAXIUNICO;

DROP TABLE IF EXISTS Administrador;
DROP TABLE IF EXISTS Viaje;
DROP TABLE IF EXISTS Tarjeta;
DROP TABLE IF EXISTS Carro;
DROP TABLE IF EXISTS Tarifa;
DROP TABLE IF EXISTS Taxista;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS EncuestaCliente;
DROP TABLE IF EXISTS EncuestaTaxista;

CREATE TABLE Administrador (
  Admin_ID INT NOT NULL AUTO_INCREMENT,
  Usuario VARCHAR (50),
  Contrasena VARCHAR (50),
  Nombre VARCHAR (50),
  Correo VARCHAR (50),
  Telefono VARCHAR (50),
  PRIMARY KEY (Admin_ID)
);

CREATE TABLE Cliente (
  Cliente_ID INT NOT NULL AUTO_INCREMENT,
  Estatus BIT,
  Usuario VARCHAR (50),
  Contrasena VARCHAR (50),
  Nombre VARCHAR (50),
  Correo VARCHAR (50),
  Telefono VARCHAR (50),
  Rating FLOAT, #CALCULADO CON PROMEDIO DE ENCUESTAS
  PRIMARY KEY (Cliente_ID)
);

CREATE TABLE Taxista (
  Taxista_ID INT NOT NULL AUTO_INCREMENT,
  Estatus BIT,
  Usuario VARCHAR (50),
  Contrasena VARCHAR (50),
  Nombre VARCHAR (50),
  Correo VARCHAR (50),
  Telefono VARCHAR (50),
  Rating FLOAT, #CALCULADO CON PROMEDIO DE ENCUESTAS
  PRIMARY KEY (Taxista_ID)
);

CREATE TABLE EncuestaTaxista (
  EncuestaTaxista_ID INT NOT NULL AUTO_INCREMENT,
  Comentarios VARCHAR (50),
  Calificacion INT,
  PRIMARY KEY (EncuestaTaxista_ID)
);

CREATE TABLE EncuestaCliente (
  EncuestaCliente_ID INT NOT NULL AUTO_INCREMENT,
  Comentarios VARCHAR (50),
  Calificacion INT,
  PRIMARY KEY (EncuestaCliente_ID)
);

CREATE TABLE Tarifa (
  Tarifa_ID INT NOT NULL AUTO_INCREMENT,
  Multiplicador FLOAT,
  CostoPorKm FLOAT,
  PRIMARY KEY (Tarifa_ID)
);

DROP TABLE Tarjeta;
CREATE TABLE Tarjeta (
  Tarjeta_ID INT NOT NULL AUTO_INCREMENT,
  Cliente_ID INT,
  Tipo VARCHAR (50),
  Numero VARCHAR (50),
  CVV VARCHAR (50),
  PRIMARY KEY (Tarjeta_ID),
  FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
);

CREATE TABLE Viaje (
  Viaje_ID INT NOT NULL AUTO_INCREMENT,
  Taxista_ID INT,
  Cliente_ID INT,
  Tarifa_ID INT,
  Origen VARCHAR (50),
  Destino VARCHAR (50),
  Estatus VARCHAR (50), #Agendado, EnProgreso, Terminado, Cancelado 
  Fecha DATETIME,
  Distancia FLOAT,
  Costo FLOAT,
  FormaDePago VARCHAR (50),
  EncuestaTaxista_ID INT,
  EncuestaCliente_ID INT,
  PRIMARY KEY (Viaje_ID),
  FOREIGN KEY (EncuestaTaxista_ID) REFERENCES EncuestaTaxista(EncuestaTaxista_ID),
  FOREIGN KEY (EncuestaCliente_ID) REFERENCES EncuestaCliente(EncuestaCliente_ID),
  FOREIGN KEY (Taxista_ID) REFERENCES Taxista(Taxista_ID),
  FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID),
  FOREIGN KEY (Tarifa_ID) REFERENCES Tarifa(Tarifa_ID)
);

CREATE TABLE Carro (
  Placa VARCHAR (50),
  Taxista_ID INT,
  Marca VARCHAR (50),
  Modelo VARCHAR (50),
  Año INT,
  Color VARCHAR (50),
  PRIMARY KEY (Placa),
  FOREIGN KEY (Taxista_ID) REFERENCES Taxista(Taxista_ID)
);


insert into Administrador(Usuario, Contrasena, Nombre, Correo, Telefono) values('JohnSada', 'SHPWLNSHA','John Sada', 'johnsada97@gmail.com', '836343682');
insert into Administrador(Usuario, Contrasena, Nombre, Correo, Telefono) values('JoanSada', 'SHPWLNASHA','Joan Sada', 'joansada97@gmail.com', '836343683');
insert into Administrador(Usuario, Contrasena, Nombre, Correo, Telefono) values('JeanSada', 'SHPWLNASHADA','Jean Sada', 'jeansada97@gmail.com', '836343684');
insert into Administrador(Usuario, Contrasena, Nombre, Correo, Telefono) values('JuanSada', 'SHPWLNASHADADA','Juan Sada', 'juansada97@gmail.com', '836343685');
insert into Administrador(Usuario, Contrasena, Nombre, Correo, Telefono) values('JaneSada', 'SHPWLNASHADADADA','Jane Sada', 'janesada97@gmail.com', '836343686');
insert into Administrador(Usuario, Contrasena, Nombre, Correo, Telefono) values('1', '1','dummy', 'dummy@gmail.com', '0000000');

insert into Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'Jaime1997', 'JaimeGarza','Jaime E. Garza', 'jaimegarza97@gmail.com', '83636383',0);
insert into Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'PabloMan', 'pabloSF','Pablo Andrade', 'pabloemilio97@gmail.com', '83636384',0);
insert into Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'Alvarol', 'SaxMann','Alvaro M.', 'alvaro@gmail.com', '83636385',0);
insert into Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'AlexXxX', 'yeahboi81','Alex Lara', 'alexanderlarius@gmail.com', '83636386',0);
insert into Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(0, 'PePe88', 'holasoyopepe','Pedro Pedrina', 'P3P3@gmail.com', '83636383',0);
insert into Cliente(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, '1', '1', 'dummy', 'dummy@gmail.com', '0000000000',0);

insert into Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'Taxi', '12345678990', 'Pancho Tijerina', 'panchillo80@hotmail.com',5434512,0);
insert into Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'GreatTaxi', 'hola99hola', 'Maria Dolores de Panza', 'mariadoloresdp@live.com',5434513,0);
insert into Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'UltraTaxi', 'taxicashmoney', 'Venustiano Hidalgo', 'venustianohi@hotmail.com',5434514,0);
insert into Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, 'MasterTaxi', 'TaxiMaestro', 'Adolfo Porfirio Mussolini', 'adopormus@live.com',5434515,0);
insert into Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(0, 'NetTaxi', 'denmelanaporfa', 'Juan de la Parrila', 'mariadoloresdp@live.com',5434513,0);
insert into Taxista(Estatus, Usuario, Contrasena, Nombre, Correo, Telefono, Rating) values(1, '1', '1', 'dummy', 'dummy@gmail.com', '0000000000',0);

insert into EncuestaTaxista(Comentarios, Calificacion) values("Se echo unos comentarios raros", 2);
insert into EncuestaTaxista(Comentarios, Calificacion) values("Tuvo flatulencia de Monterrey hasta Buenos Aires", 5);
insert into EncuestaTaxista(Comentarios, Calificacion) values("Platicamos mucho, tiene ideas revolucionarias", 5);
insert into EncuestaTaxista(Comentarios, Calificacion) values("Me saco una pistola, pero es muy buena onda :)", 5);
insert into EncuestaTaxista(Comentarios, Calificacion) values("Creo que tiene complicaciones estomacales", 3);

insert into EncuestaCliente(Comentarios, Calificacion) values("Muy linda persona, me gustaria conocerla mas", 5);
insert into EncuestaCliente(Comentarios, Calificacion) values("Muy lindo mijo, muy paciente.", 5);
insert into EncuestaCliente(Comentarios, Calificacion) values("Me escucho", 5);
insert into EncuestaCliente(Comentarios, Calificacion) values("No es un cobarde", 5);
insert into EncuestaCliente(Comentarios, Calificacion) values("No hablo mucho", 5);

insert into Tarifa(Multiplicador, CostoPorKm) values(1.1,20.20);
insert into Tarifa(Multiplicador, CostoPorKm) values(1.5,25);
insert into Tarifa(Multiplicador, CostoPorKm) values(0.8,21);
insert into Tarifa(Multiplicador, CostoPorKm) values(2,30);
insert into Tarifa(Multiplicador, CostoPorKm) values(1.7,28);

insert into Tarjeta(Cliente_ID, Tipo, Numero, CVV) values(1,'MasterCard','1234567432','033');
insert into Tarjeta(Cliente_ID, Tipo, Numero, CVV) values(2,'Visa','1234567433','034');
insert into Tarjeta(Cliente_ID, Tipo, Numero, CVV) values(3,'Visa','1234567434','035');
insert into Tarjeta(Cliente_ID, Tipo, Numero, CVV) values(4,'MasterCard','1234567435','036');
insert into Tarjeta(Cliente_ID, Tipo, Numero, CVV) values(5,'MasterCard','1234567436','037');

insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(1,1,1,'Monterrey', 'Houston','Terminado','2018-1-20 08:00:30',732.3,0,'MasterCard',1,1);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(2,2,2,'Monterrey', 'Buenos Aires','Terminado','2018-1-22 10:02:30',8024,0,'Visa',2,2);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(3,3,3,'Monterrey', 'Saltillo','Terminado','2018-2-10 12:10:45',50,0,'MasterCard',3,3);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(4,4,4,'Ciudad de Mexico', 'Guadalajara','Terminado','2018-1-30 00:00:00',535.6,0,'MasterCard',4,4);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(5,5,5,'Guadalajara', 'Laredo','Terminado','2018-1-20 08:00:30',1005.2,0,'Visa',5,5);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(1,2,1,'Monterrey', 'Laredo','Agendado','2018-2-2 06:02:15',224.7,0,'MasterCard', NULL, NULL);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(3,4,4,'Seattle', 'Houston','EnProgreso','2018-1-20 08:00:30',3761.3,0,'Visa', NULL, NULL);
insert into Viaje(Taxista_ID, Cliente_ID, Tarifa_ID, Origen, Destino, Estatus, Fecha, Distancia, Costo, FormaDePago, EncuestaTaxista_ID, EncuestaCliente_ID) values(2,1,2,'Chicago', 'Baja California','Cancelado','2018-1-20 08:00:30',2745,0,'Visa', NULL, NULL);


insert into Carro(Placa, Taxista_ID, Marca, Modelo, Año, Color) values ('SSH-33-83',1,'Audi','A3',2014,'Gris');
insert into Carro(Placa, Taxista_ID, Marca, Modelo, Año, Color) values ('SMP-17-34',1,'Toyota','Yaris R',2018,'Rojo');
insert into Carro(Placa, Taxista_ID, Marca, Modelo, Año, Color) values ('HAS-09-76',1,'Honda','Accord',1999,'Azul');
insert into Carro(Placa, Taxista_ID, Marca, Modelo, Año, Color) values ('SSJ-23-99',1,'Nissan','Sentra',2015,'Gris');
insert into Carro(Placa, Taxista_ID, Marca, Modelo, Año, Color) values ('SAR-21-81',1,'Tesla','Model-T',2018,'Rojo');


