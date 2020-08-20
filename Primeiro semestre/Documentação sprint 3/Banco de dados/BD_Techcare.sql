create database techcare;
use techcare;

create table cadastro_site(
CPF varchar(11) primary key,
nome varchar(40),
sexo varchar(1),
email varchar(40),
senha varchar(15),
data_de_nascimento date
);
create table cadastro_hospital(
id_hospital int primary key auto_increment,
nome varchar(30),
CNPJ varchar(14),
senha varchar(15)
);
create table cadastro_paciente(
nome varchar(40),
CPF varchar(11),
email varchar(40),
sexo varchar(1),
idade varchar(3),
data_de_nascimento date,
data_de_internacao date,
hora_de_internacao time,
tempo_de_permanencia time,
fk_leito int,
foreign key(fk_leito) references leitos(id_leito)
);


create table leitos(
id_leito int primary key auto_increment,
temperatura_padrao int,
umidade_padrao int,
data_de_armazenamento date,
hora_de_armazenamento time,
fk_hospital int,
foreign key(fk_hospital) references cadastro_hospital(id_hospital)
);
insert into cadastro_hospital values
(null, 'legal', '12345678901234', 'hospital123');

insert into leitos values
(null, 25, 80, '2020-02-28', '15:15', 1);

select*from leitos;

insert into cadastro_paciente values
('mario', '12345678901', 'mario@gmail.com', 'm', '18', '2001-05-21', '2020-03-03', '22:30', '2:00', 1);

select * from cadastro_paciente;



