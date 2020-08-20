create database Pratica_funcionario;
use Pratica_funcionario;

create table Setor ( 
    ID_Setor int primary key,
    Nome_setor varchar (45),
    Andar_setor char(2)
);

insert into Setor values
    (1, 'Administração', 1),
    (2, 'TI', 2),
    (3, 'Recursos humanos', 3),
    (4, 'Financeiro', 4);

create table Funcionario (
    ID_funcionario int primary key,
    Nome_funcionario varchar (45),
    Telefone char (14),
    Salario decimal (9,2),
check (Salario > 0),
    FK_Setor int,
Foreign key (FK_Setor)
references Setor (ID_Setor)
); 

insert into Funcionario values
    (101, 'Cleópatra', '(11)94897-8113', 489748, 1),
    (102, 'Renato Aragão', '(11)99468-5430', 54648, 3),
    (103, 'Danilo Gentili', '(11)90124-3451', 570640, 2),
    (104, 'Jô Soares', '(11)90144-1320', 15648, 1),
    (105, 'Leandro Hassum', '(11)97685-7568', 48978, 4),
    (106, 'Charlie Chaplin', '(11)96784-3544', 156948, 2),
    (107, 'Jim Carrey', '(11)97640-2544', 41564, 1);
    
create table Acompanhante (
    primary key (ID_Acompanhante, FK_Funcionario),
    ID_Acompanhante int,
    Nome_Acompanhante varchar(45),
    Tipo_relacao varchar (25),
    Data_nascimento date,
    FK_Funcionario int,
foreign key (FK_Funcionario)
references Funcionario (ID_funcionario)
);

insert into Acompanhante values 
    (10001, 'Roberto Carlos', 'Esposo', '1964-11-23', 101), 
    (10002, 'Mussum', 'Amigo', '1987-08-16', 106), 
    (10003, 'Adam Sandler', 'Irmão', '1936-12-01', 105), 
    (10004, 'Dwayne Johnson', 'Tio', '1914-01-05', 103), 
    (10005, 'Will Smith', 'Pai', '1921-06-15', 104), 
    (10006, 'Bella Thorne', 'Namorada', '1954-04-29', 107), 
    (10007, 'Sophia Myles', 'Mãe', '1965-08-27', 105), 
    (10008, 'Chris Hemsworth', 'Amigo', '1987-02-14', 103), 
    (10009, 'Elizabeth II', 'Avó', '1994-05-09', 102), 
    (10010, 'Megan Fox', 'Namorada', '1974-10-11', 102), 
    (10011, 'Jackie Chan', 'Filho', '1969-01-31', 102);


select * from Setor;

select * from Funcionario;

select * from Acompanhante;

select * from Setor, Funcionario where ID_Setor = FK_Setor;

select * from Setor, Funcionario where Nome_Setor = 'TI' and ID_Setor = FK_Setor;

select * from Funcionario, Acompanhante where ID_funcionario = FK_funcionario;

select * from Funcionario, Acompanhante where Nome_funcionario = 'Danilo Gentili' and ID_funcionario = FK_funcionario;

select * from Setor, Funcionario, Acompanhante where Nome_Setor = 'TI' and ID_Setor = FK_Setor and ID_funcionario = FK_funcionario;

select sum(Salario) as 'Soma dos salários', avg(Salario) as 'Média dos salários' from Funcionario;

select sum(Salario) as 'Soma dos salários acima de 50000', avg(salario) as 'Média dos salários acima de 2000' from Funcionario where Salario > 50000;

select max(salario) as 'Salário mais alto', min(salario) as 'Salário mais baixo' from funcionario;

select count(salario) as 'Salários cadastrados' from Funcionario;

select count(salario) as 'Salários cadastrados menores que 50000' from Funcionario where salario < 50000;