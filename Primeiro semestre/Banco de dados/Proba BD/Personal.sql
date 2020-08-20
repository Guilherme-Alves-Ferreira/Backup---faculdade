create database Personal;
use Personal;

create table Personal_informacoes (
    ID_personal int primary key auto_increment,
    Nome_personal varchar (40),
    Area_atuacao varchar (20), 
    Telefone_fixo char (14),
    telefone_celular char(16),
    fk_personal_orientador int,
foreign key (fk_personal_orientador)
references Personal_informacoes (ID_personal)
) auto_increment = 1000;

insert into Personal_informacoes values 
    (null, 'Adenor Leonardo Bacchi', 'Musculação', '(11) 8672-1923', '(11) 91234-0123', null),
    (null, 'Unai Emery', 'Pilates', '(11) 1546-3464', '(11) 94687-5489', null),
    (null, 'José Mourinho', 'Boxe', '(11) 8948-1327', '(11) 99484-9546',  null),
    (null, 'Zinédine Zidane', 'Boxe', '(11) 4787-1250', '(11) 99254-0123',  null),
    (null, 'Luiz Felipe Scolari', 'Musculação', '(11) 2502-0256', '(11) 94848-3682',  1003),
    (null, 'Luis Enrique Martínez García', 'Pilates', '(11) 1025-1025', '(11) 93026-9548', 1001),
    (null, 'Massimiliano Allegri', 'Boxe', '(11) 1021-1325', '(11) 94872-1025',  1000),
    (null, 'Mauricio Pochettino', 'Musculação', '(11) 2584-1025', '(11) 94124-9684',  1002),
    (null, 'Ernesto Valverde', 'Boxe', '(11) 9548-5647', '(11) 93652-0651',  1002),
    (null, 'Renato Gaúcho', 'Musculação', '(11) 6541-3610', '(11) 95468-5132',  1001),
    (null, 'Carlos Caetano Bledorn Verri', 'Pilates', '(11) 7841-3564', '(11) 95614-3201',  1001),
    (null, 'Julen Lopetegui', 'Musculação', '(11) 5621-4125', '(11) 95484-3251',  1004);

create table Aluno (
    ID_aluno int primary key auto_increment,
    Nome varchar (40),
    Dia char (2),
    Mes varchar (20),
    Ano char(4),
    Bairro varchar (50),
    fk_personal int,
foreign key (fk_personal)
references Personal_informacoes (ID_personal)
) auto_increment = 1;

insert into Aluno values
    (null, 'Ferdinando Santos', 21, 'Dezembro', 1995, 'Parelheiros‎', 1004),
    (null, 'Henrique da Silva', 1, 'Março', 1984, 'Pari‎', 1007),
    (null, 'Charlie Chaplin', 8, 'Maio', 2001, 'Parque do Carmo', 1011),
    (null, 'Adam Sandler', 17, 'Junho', 1975, 'Penha‎', 1001),
    (null, 'Jennifer Aniston', 13, 'Janeiro', 1976, 'Perdizes‎', 1002),
    (null, 'David Spade', 2, 'Outubro', 1988, 'Pinheiros‎', 1009),
    (null, 'Julia Fox', 4, 'Agosto', 1991, 'Ponte Rasa', 1003),
    (null, 'Jim Carrey', 30, 'Fevereiro', 1994, 'Consolação', 1002),
    (null, 'Chris Rock', 28, 'Setembro', 1979, 'Mooca', 1010),
    (null, 'Brooklyn Decker', 11, 'Dezembro', 1982, 'Liberdade', 1009),
    (null, 'Adam Driver', 13, 'Janeiro', 2000, 'Tatuapé', 1004),
    (null, 'Kevin Garnett', 7, 'Junho', 1983, 'Vila Prudente', 1006);


select * from Personal_informacoes;

select * from Aluno;

select Personal_informacoes.*, Nome, Dia, Mes, Ano, Bairro from Personal_informacoes, Aluno where fk_personal = ID_personal;

select Personal_informacoes.*, Nome, Dia, Mes, Ano, Bairro from Personal_informacoes, Aluno where Nome_personal = 'José Mourinho';

select * from Personal_informacoes as N, Personal_informacoes as C  where N.fk_personal_orientador = C.ID_personal;

select * from Personal_informacoes as N, Personal_informacoes as C  where N.fk_personal_orientador = C.ID_personal and C.Nome_personal = 'Unai Emery';

select * from Personal_informacoes as N, Personal_informacoes as C, Aluno where N.fk_personal_orientador = C.ID_personal and N.ID_personal in (1004, 1005, 1006,1007, 1008, 1009, 1010, 1011) and fk_personal = N.ID_personal;

select * from Personal_informacoes as N, Personal_informacoes as C, Aluno where N.Nome_personal = 'Renato Gaúcho' and N.fk_personal_orientador = C.ID_personal and fk_personal = 1009;