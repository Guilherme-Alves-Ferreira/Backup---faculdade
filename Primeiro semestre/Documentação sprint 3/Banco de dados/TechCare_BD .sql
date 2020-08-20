create database TechCare;
use TechCare;
drop database TechCare;

create table dados_do_sensor(
id_dados int primary key auto_increment,
temperatura_dados decimal(3,1),
umidade_dados decimal(3,1),
data_dados date,
hora_dados time,
check (umidade_dados > 0),
check (temperatura_dados > 0),
fk_sensor int,
foreign key (fk_sensor) references sensor(id_sensor)
);
create table sensor(
id_sensor int primary key,
fk_ala int,
foreign key (fk_ala) references ala(id_ala)
);

create table ala(
id_ala int,
fk_hospital char(14),
primary key (id_ala, fk_hospital),
foreign key (fk_hospital) references hospital(cnpj_hospital)
);
create table hospital(
cnpj_hospital varchar(14) primary key,
telefone_hospital char(10),
cep_hospital char(8),
numero_hospital int,
bairro_hospital varchar(30)
);
create table enfermeiro(
email_enfermeiro varchar(40) primary key,
nome_enfermeiro varchar(60),
sexo_enfermeiro enum('m', 'f', 'n'),
senha_enfermeiro varchar(14),
fk_hospital char(14),
foreign key (fk_hospital) references hospital(cnpj_hospital)
);
create table noticias(
id_noticias int primary key auto_increment,
primeironome_noticias varchar(40),
sobrenome_noticias varchar(60),
CPF_noticias char(11),
celular_noticias char(11),
email_noticias varchar(40),
senha_noticias varchar(30),
data_nasc_noticias date,
sexo_noticias enum('m','f','n'),
possui_deficiencia_noticias enum('s','n'),
INSS_noticias char(10),
tipo_deficiencia_noticias varchar(20)
);
select * from dados_do_sensor;
select * from sensor;
select * from ala;
select * from hospital;
select * from enfermeiro;
select * from noticias;






