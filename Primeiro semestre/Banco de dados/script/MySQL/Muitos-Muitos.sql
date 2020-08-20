create database EscolaIdioma;
use EscolaIdioma;

create table Aluno (
    ra int primary key auto_increment,
    Nome_Aluno varchar (45),
    Bairro varchar (45)
)auto_increment = 1000;

insert into Aluno values 
    (null, 'Maria', 'Saúde'),
    (null, 'João', 'Consolação');

Create table AlunoCurso (
    primary key (fk_Aluno, fk_Curso),
    fk_Aluno int,
    fk_Curso int,
    Data_Inicio date,
    Nivel char(2),
    Media decimal (3,2),
check (Media >= 0 and Media <= 10)
);

insert into AlunoCurso values
    (1000, 1, '2015-02-01', 'A1', 6),
    (1000, 2, '2017/02/01', 'I3', 8),
    (1001, 1, '2020/02/01', 'B1', 9),
    (1001, 2, '2019/02/01', 'I2', 7);

Create table  Curso (
    ID_Curso int primary key auto_increment,
    Nome_Curso varchar (45),
    Coordenador varchar (45)
);

insert into Curso values
    (null, 'Espanhol', 'Juan'),
    (null, 'Inglês', 'Beth');
    
select * from Aluno;
    
select * from AlunoCurso;

select * from Curso;    

select Aluno.*, Curso.*, Data_Inicio, Nivel, Media from Aluno, Curso, AlunoCurso where fk_Curso = ID_Curso and fk_Aluno = ra;

select * from Aluno, Curso, AlunoCurso where fk_Aluno = ra and fk_Curso = ID_CUrso and Nome_Curso = 'Espanhol';

select * from Aluno, Curso, AlunoCurso where fk_Aluno = ra and fk_Curso = ID_CUrso and Nome_Aluno = 'João';

select sum(Media) as 'Soma das médias', avg(Media) as 'Média das médias' from AlunoCurso;

select max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoCurso;

select max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoCurso group by fk_Curso;

select fk_Curso as 'ID do curso', max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoCurso, Curso group by fk_Curso;

select Nome_Curso as 'Curso', max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoCurso, Curso where fk_Curso = ID_Curso group by fk_Curso;

select fk_Aluno as 'RA', max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoCurso, Aluno group by fk_Aluno;

select Nome_Aluno as 'Aluno', max(Media) as 'Maior média', min(Media) as 'Menor média' from AlunoCurso, Aluno where fk_Aluno = ra group by fk_Aluno;

select distinct Media from AlunoCurso;

select count(Media) as 'Quantidade de médias' from AlunoCurso;

select count(distinct Media) as 'Quantidade de médias' from AlunoCurso;