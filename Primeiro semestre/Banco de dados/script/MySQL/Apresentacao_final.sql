create database apresentacao;
use apresentacao;

create table Aluno (
    RA_aluno varchar (10) primary key,
    FK_representante varchar (8),
    FK_Projeto int,
foreign key (FK_Projeto)
references Projeto (ID_Projeto),

foreign key (FK_representante)
references representante (RA_representante)
);

insert into Aluno values
    ('01201091', null, 10001),
    ('01201089', null, 10001), 
    ('01201134', '01201108', 10002), 
    ('01201020', '01201047', 10002),
    ('01201071', '01201108', 10001);

create table Projeto (
    ID_Projeto int primary key,
    Nome_projeto varchar (30),
    Descricao varchar (100)
);

insert into Projeto values
    (10001, 'Iot revolucionário', 'Um projeto utilizando sensor de aproximação para controlar o tráfego de carros voadores'),
    (10002, 'Controlador de sopa', 'Um projeto que utiliza sensor de temperatura para impedir que a sopa esfrie');

create table representante (
    RA_representante varchar (8) primary key
);

insert into representante values 
    ('01201047'),
    ('01201108'),
	('01201067');

create table Acompanhante (
    ID_acompanhante varchar (8) primary key,
    Nome_acompanhante varchar (40),
    Relacionamento varchar (15),
    FK_aluno varchar (8),
foreign key (FK_aluno)
references Aluno (RA_aluno)
);

insert into Acompanhante values 
    (1, 'Carlos Almeida', 'Pai', '01201071'),
    (2, 'Roseli Cabral', 'Irmã', '01201020'),
    (3, 'Fernando Cardoso', 'Primo', '01201089');
    
    
select * from Aluno;
    
select * from Acompanhante;

select * from Projeto;

select * from representante;

select Aluno.*, Nome_projeto, Descricao from Aluno, Projeto where FK_Projeto = ID_Projeto;

select RA_Aluno, ID_acompanhante, Nome_acompanhante, Relacionamento from Aluno, Acompanhante where RA_aluno = FK_aluno;

select RA_Aluno, RA_representante from Aluno, representante where FK_representante = RA_representante;

select Aluno.*, Nome_projeto, Descricao from Aluno, Projeto where Nome_projeto = 'Iot revolucionário';

select RA_Aluno, ID_acompanhante, Nome_acompanhante, Relacionamento, ID_Projeto, Nome_projeto, Descricao from Aluno, Acompanhante, Projeto where RA_aluno = FK_aluno and FK_Projeto = ID_Projeto;

