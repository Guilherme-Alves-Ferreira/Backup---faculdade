create database rainbow6;
use rainbow6;

create table cadastros (
    idUser int primary key auto_increment,
    Nome varchar (45),
    Email varchar (50),
    Nickname varchar (20),
    Senha char (12),
    Plataforma varchar(8),
check (Plataforma = 'PC' or plataforma = 'Xbox One' or Plataforma = 'PS4'),
    dataNasc date,
    aceitarTermos bit(1),
    recerberNews bit(1)
)auto_increment = 000001;

select * from cadastros;
    