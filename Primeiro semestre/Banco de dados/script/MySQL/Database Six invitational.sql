create database sixinv20;

create table times (
    ID int primary key,
    Organização int (3),
    Vitórias int (10),
    Derrotas int (10),
    Empates int (10)
);

insert into times values
     (1, 101, 2, 1, 0),
     (2, 102, 3, 0, 0),
     (3, 103, 4, 0, 1),
	 (4, 104, 3, 1, 0),
     (5, 105, 2, 1, 0),
     (6, 106, 2, 1, 0),
     (7, 107, 4, 0,1),
     (8, 108, 0, 1, 0),
     (9, 109, 1, 1, 0),
     (10, 110, 0, 1, 0);

create table Organizações (
    ID_organização int primary key,
    Nome_organização varchar (20),
    Nickname varchar (20),
    jogador int (3)
);
insert into Organizações values (
    (101, 'Team Liquid', 'Zigueira', 'SexyCake', 'Paluh', 'Nesk',);
);
 Create table Jogadores (
	 ID_jogador int primary key,
     Nome_jogador varchar (40),
     Telefone int (20),
     Email varchar (30),
     Rating float (2)
);








create database Banco_bradesc;
drop table poupança;
create table Poupança (
    Nome varchar (50),
    Idade int (3),
    Endereço varchar (100),
    Estado_civil varchar (20),
    Agência int (20),
    Numero_conta int (20)
);

select * from poupança;

insert into Poupança values
     ('Aparecida Lurdes dos Santos', 63, 'Rua São Pedro 117', 'Viúva', 9, 123456789);  
     
select * from poupança where Endereço = 'Rua são pedro 117';

insert into Poupança values
     ('Guilherme alves', 18, 'Rua São Pedro 117', 'solteiro', 9, 123456789);  

























