Create database PraticaJogador;
use PraticaJogador;

create table TimeF (
    ID_time int primary key auto_increment,
    Nome_time varchar (20),
    Nome_técnico varchar (40),
    Data_formacao date
) auto_increment = 1;

insert into TimeF values
    (null, 'Corinthians', 'Silvio Santos', '1910-09-01'),
    (null, 'Palmeiras', 'Roberto Carlos', '1914-08-26'),
    (null, 'São Paulo', 'Tiringa', '1930-01-25'),
    (null, 'Santos', 'Silvio Santos', '1912-03-14');
    

create table Jogador (
    ID_jogador int primary key auto_increment,
    Nome_jogador varchar (40),
    Posicao varchar (15),
    Salario decimal (9,2),
check (Salario > 0),
    Conselheiro int,
    Time_pertencente int,
foreign key (Time_pertencente)
references TimeF (ID_time),
foreign key (Conselheiro)
references Jogador (ID_jogador)
)auto_increment = 10001;

insert into Jogador values 
    (null, 'Adolf Hitler', 'Lateral', 18700, null, 3),
    (null, 'Benito Mussolini', 'Zagueiro', 13000, null, 3),
    (null, 'Lenin', 'Atacante', 4300, null, 3),
    (null, 'Winston Churchill', 'Zagueiro', 31700, null, 2),
    (null, 'Hirohito', 'Lateral', 2000, null, 1),
    (null, 'Mao Tsé-Tung', 'Zagueiro', 7500, null, 4),
    (null, 'Franklin Roosevelt', 'Goleiro', 15000, null, 3),
    (null, 'Karl Marx', 'Zagueiro', 35000, null, 3),
    (null, 'Harry Truman', 'Atacante', 5000, null, 1);
    
    
insert into Jogador values 
	(null, 'Lucas guimarães', 'Zagueiro', 570640, 10009, 4),
    (null, 'Fernando Carlos', 'Atacante', 22000, 10004, 2),
    (null, 'Pedro Alvares Cabral', 'Zagueiro', 500, 10003, 4),
    (null, 'Albert Einstein', 'Goleiro', 97457, 10001, 1),
    (null, 'Isaac Newton', 'Lateral', '8000', 10002, 4),
    (null, 'Thomas Edison', 'Zagueiro', '4700', 10007, 3),
    (null, 'Nikola Tesla', 'Goleiro', '23000', 10006, 4),
    (null, 'Stephen Hawking', 'Zagueiro', 10300, 10005, 1),
    (null, 'Galileu Galilei', 'Lateral', 3300, 10002, 4),
    (null, 'Aristóteles', 'Atacante', 6700, 10005, 3),
    (null, 'Platão', 'Atacante', 1000, 10002, 4),
    (null, 'Sócrates', 'Goleiro', 1700, 10001, 2),
    (null, 'Homero', 'Zagueiro', 15000, 10007, 4),
    (null, 'Tales de Mileto', 'Lateral', 19800, 10008, 4),
    (null, 'Demócrito', 'Zagueiro', 13400, 10007, 1),
    (null, 'Agostinho de Hipona', 'Lateral', 6500, 10003, 1),
    (null, 'Friedrich Nietzsche', 'Zagueiro', 3700, 10006, 2),
    (null, 'Immanuel Kant', 'Goleiro', 34500, 10001, 1),
    (null, 'Pitágoras', 'Zagueiro', 22800, 10005, 2),
    (null, 'Josef Stalin', 'Zagueiro', 99700, 10004, 3);

    

create table Seguidor (
    primary key (ID_Seguidor, FKjogador),
    ID_Seguidor int,
    FKjogador int,
foreign key (FKjogador)
references Jogador (ID_jogador),
    Nome varchar (40),
    Nickname varchar (40),
    Sexo char (1),
check (Sexo = 'M' or Sexo = 'F' or Sexo = 'N')
);

insert into Seguidor values 
    (1, 10001, 'Carlos', 'Carlos953', 'M'),
    (1, 10027, 'Alex', 'AL214', 'M'),
    (1, 10004, 'Giovana', 'Giovana_97458', 'F'),
    (1, 10029, 'Henrique', 'LKP', 'M'),
    (1, 10025, 'Lucas', 'MC_luquinhas', 'M'),
    (1, 10003, 'Carla', 'Sayuri', 'F'),
    (2, 10025, 'Vinicius', 'Vini334	', 'N'),
    (1, 10026, 'Gustavo', 'Gstv', 'M'),
    (3, 10025, 'Camila', 'Ca_mila', 'F'),
    (1, 10007, 'Lúcia', 'Lúcia_guimarães', 'F'),
    (1, 10014, 'Felipe', 'Fe_silva', 'M'),
    (1, 10015, 'Joana', 'Jo4578', 'N'),
    (2, 10014, 'Pedro', 'Pedrito', 'M'),
    (1, 10021, 'Fernando', 'Touro_Ferdinando', 'M');
    
select * from Seguidor;

select * from Jogador;

select * from TimeF;

select * from Jogador order by Posicao desc;

select * from Jogador where Posicao = 'Zagueiro';

select * from TimeF where Nome_técnico like '%O_';

select * from TimeF order by Nome_técnico;

select * from TimeF order by Data_formacao desc;

Update Jogador set posicao = 'Atacante'
    where ID_jogador = 10001;
    
select * from TimeF, Jogador where Fk_time = ID_time;

-- select * from TimeF, Jogador where Fk_time = ID_time and Nome_time = 'Palmeiras';

select TimeF.*, Jogador.* from TimeF, Jogador where Nome_Time = 'São Paulo' and time_pertencente = ID_time;

-- Para relacionamento recursivo
select * from Jogador as J, Jogador as C where J.Conselheiro = C.ID_jogador;

-- select c.Nome_time, j. Time_pertencente, j.Nome_jogador
-- from TimeF as c, Jogador as j
-- where j. Time_pertencente = c. ID_time and c.Nome_time= 'Palmeiras'; 

select * from TimeF, Jogador as J, Jogador as C where J.Conselheiro = C.ID_jogador and J.Time_pertencente = ID_time;

select * from TimeF, Jogador as J, Jogador as C where J.Conselheiro = C.ID_jogador and J.Time_pertencente = ID_time and J.ID_jogador = 10025;

select * from Jogador, Seguidor where ID_jogador = FKjogador;

select * from Jogador, Seguidor where ID_jogador = 10025 and ID_jogador = FKjogador;

delete from Jogador where ID_jogador = 10017;

select * from Jogador;

drop table Seguidor;

drop table Jogador;

drop table TimeF;

drop database Praticajogador;







    