create database Familia;
use Familia;

create table Pessoa (
    ID_Pessoa int primary key auto_increment,
    Nome varchar (30),
    Nacimento date,
    Profissao varchar (40)
)auto_increment = 10001;

insert into Pessoa values 
    (null, 'Guilherme Alves', '20010702', 'Analista  de segurança de dados'),
    (null, 'Lucas da Silva', '20020624', 'Fotógrafo'),
    (null, 'Larissa Manoela', '20020418', 'Atriz'),
    (null, 'Fernando Almeida', 19970605, 'Fotógrafo');
    
create table Gastos (
    ID_Gasto int primary key auto_increment,
    Dia date,
    Valor varchar (40),
    Descricao varchar (35),
    Responsavel int,
foreign key (Responsavel)
references Pessoa (ID_Pessoa)
)auto_increment = 1;

insert into Gastos values 
    (null, 20200406, 'R$25,00', 'Battle Pass - Rainbow Six: Siege', 10001),
    (null, 20191130, 'R$85.000,00', 'Carro novo', 10003),
    (null, 20200214, 'R$1.050,00', 'Câmera nova', 10006),
	(null, 20180922, 'R$450,00', 'Cachorro novo', 10002);

select * from Gastos;

select * from Pessoa;

select * from Pessoa, Gastos where responsavel = ID_Pessoa and Profissao = 'Fotográfo';
select Pessoa.*,ID_Gasto, Dia, Valor, Descricao from Pessoa, Gastos where responsavel = ID_Pessoa and Profissao = 'Fotográfo';

select Nome, Valor, Descricao from Pessoa, Gastos where responsavel = ID_Pessoa;

update Gastos set Valor = 'R$60,00'
    where ID_Gasto = 1;
    

delete from Pessoa where ID_Pessoa = 10004;

delete from Pessoa where ID_Pessoa = 10005;


