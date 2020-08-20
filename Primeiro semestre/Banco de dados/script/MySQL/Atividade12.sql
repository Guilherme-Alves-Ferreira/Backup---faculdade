create database faculdade;
use faculdade;

create table Aluno (
    ra int primary key auto_increment, 
    Nome_aluno varchar (45),
    Bairro varchar(45)
)auto_increment = 1000;

insert into Aluno values
    (null, 'Pedro', 'Jardins'),
    (null, 'Carla', 'Bela vista'),
    (null, 'Guilherme', 'Campo Belo'),
    (null, 'Laura', 'Jardins');
    
create table AlunoDisc (
    primary key (fk_Aluno, fk_Disc, PerLetivo),
    fk_Aluno int,
    fk_Disc int,
    PerLetivo int,
    qtd_Faltas int,
check (qtd_Faltas >=0),
    Media decimal (3,2),
check (Media >=0 and Media <=10),
foreign key (fk_Aluno)
references Aluno (ra),
foreign key (fk_Disc)
references Disciplina (ID_Disciplina)
);

insert into AlunoDisc values
    (1000, 1, 20201, 3, 8.0),
    (1000, 2, 20201, 7, 9.0),
    (1001, 3, 20201, 3, 9.0),
    (1001, 1, 20201, 2, 9.5),
    (1002, 3, 20201, 5, 7.5),
    (1003, 2, 20201, 1, 6.0),
    (1002, 1, 20202, 0, 8.0),
    (1001, 2, 20202, 1, 7.5);

create table Disciplina (
    ID_Disciplina int primary key auto_increment,
    Nome_disc varchar (45)
);

insert into Disciplina values
    (null, 'Banco de dados'),
    (null, 'Arq. Comp.'),
    (null, 'Algorítimo'),
    (null, 'Socioemocional'),
    (null, 'TI');
    

select * from Aluno;

select * from AlunoDisc;

select * from Disciplina;

select Aluno.*, Disciplina.*, PerLetivo, qtd_Faltas  from Aluno, Disciplina, AlunoDisc where fk_Disc = ID_Disciplina and fk_Aluno = RA;

select Aluno.*, Disciplina.*, PerLetivo, qtd_Faltas  from Aluno, Disciplina, AlunoDisc where Nome_Disc = 'Banco de dados' and fk_Disc = ID_Disciplina and fk_Aluno = RA;
       
select Aluno.*, Disciplina.*, PerLetivo, qtd_Faltas from Aluno, Disciplina, AlunoDisc where Nome_Aluno = 'Guilherme' and fk_Disc = ID_Disciplina and fk_Aluno = RA; 

select sum(Media) as 'Soma das médias', sum(qtd_Faltas) as 'Faltas totais' from AlunoDisc;

select avg(Media) as 'Média das médias', avg(qtd_Faltas) as 'Média de faltas' from AlunoDisc;

select max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoDisc;

select max(qtd_Faltas) as 'Maior quantidade de faltas', min(qtd_Faltas) as 'Menor quantidade de faltas' from AlunoDisc;

select Nome_Disc as 'Disciplina', max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoDisc, Disciplina where fk_Disc = ID_Disciplina group by fk_Disc;

select Nome_Aluno as 'Aluno', max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoDisc, Aluno where fk_Aluno = RA group by fk_Aluno;

select Media from AlunoDisc;

select distinct Media from AlunoDisc;

select count(Media) from AlunoDisc;

select count(distinct Media) from AlunoDisc;

