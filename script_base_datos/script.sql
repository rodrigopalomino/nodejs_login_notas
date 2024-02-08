create database login_notas;

use login_notas;

create table usuario(
  usuario_id int not null auto_increment,
  nombre varchar(50) not null,
  email varchar(50) not null unique,
  password varchar(250) not null,
  estado boolean,
  primary key(usuario_id)
);

create table nota (
  nota_id int not null auto_increment,
  nombre varchar(50) not null,
  contenido varchar(50) not null,
  usuario_id int not null,
  primary key(nota_id),
  foreign key(usuario_id) references usuario(usuario_id)
);

select * from usuario;
insert into usuario(nombre,email,password,estado) values ("rodrigo","rodrigo@gmail.com","contraseña",false);
insert into usuario(nombre,email,password,estado) values ("nose","nose@gmail.com","contraseña",true);