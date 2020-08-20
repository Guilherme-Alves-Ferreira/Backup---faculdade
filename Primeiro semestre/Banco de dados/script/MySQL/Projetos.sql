create database Projetos;
use Projetos;

create table Alunos (
    RA int primary key auto_increment,
    Nome_aluno varchar(45),
    Email varchar(45),
    fk_grupo int,
foreign key (fk_grupo)
references Grupos (ID_Grupos)
)auto_increment = 01201001;

insert into Alunos (Nome_aluno, Email, fk_grupo) values
    ('Guilherme', 'guilherme_12547@bandtec.com.br', 1),
    ('Pedro', 'PedroEF_9904@bandtec.com.br', 2),
    ('Fernanda', 'Fernanda_54135@bandtec.com.br', 3),
    ('Camila', 'Camila._Silva6415@bandtec.com.br', 4),
    ('Lucas', 'Lucas_15174@bandtec.com.br', 5),
    ('Giulia', 'Giulia_Dantas4543@bandtec.com.br', 1),
    ('Giovana', 'Giovana_Ferreira1535@bandtec.com.br', 2),
    ('Marcos', 'Marcos_54131@bandtec.com.br', 3),
    ('Mario', 'Mario_Moscou548431@bandtec.com.br', 4),
    ('João', 'João_Silveira12@bandtec.com.br', 5),
    ('Carlos', 'Carlito_S15@bandtec.com.br', 1),
    ('Juan', 'JuanAS_54648@bandtec.com.br', 2),
    ('Gustavo', 'GustavoAG_1468@bandtec.com.br', 3),
    ('Lucas', 'Lucas_14684D@bandtec.com.br', 4),
    ('Camila', 'Camila_5846@bandtec.com.br', 5),
    ('Giulia', 'GiuliaD_135@bandtec.com.br', 1),
    ('Guilherme', 'guilherme_24254@bandtec.com.br', 2),
    ('Pedro', 'Pedro_468@bandtec.com.br', 3),
    ('Gustavo', 'Gustavo_487@bandtec.com.br', 4),
    ('Gustavo', 'Gustavo_9468@bandtec.com.br', 5);

create table Grupos (
    ID_Grupos int primary key auto_increment,
    Nome_Grupo varchar(45),
    Desc_projeto varchar(65)
)auto_increment = 1;

insert into Grupos values 
    (null, 'Grupo MC', 'Sensor de temperatura para lanches'),
    (null, 'Grupo Shopp', 'Sensor de proximidade para praças de alimentação'),
    (null, 'Grupo NASA', 'Sensor de luminosidade para astronautas enviados para o sol'),
    (null, 'Grupo SUS', 'Sensor de temperatura e umidade para hospitais'),
    (null, 'Grupo ASUS', 'Sensor de luminosidade para monitores');

create table GrupoProf (
    primary key (fk_Grupo_P, fk_prof, id_avaliacao),
    id_avaliacao int,
    fk_Grupo_P int,
    fk_Prof int,
    Data_avaliacao date,
    Hora_avaliacao time,
    Nota decimal(3,2),
check (Nota > 0 and Nota <= 10),
foreign key (fk_Grupo_P)
references Grupos (ID_Grupos),
foreign key (fk_Prof)
references Professores (ID_Prof)
);

insert into GrupoProf values
    (1, 1, 10000, '2020-07-05', 133000, 3), 
    (1, 2, 10004, '2020-07-05', 140000, 4), 
    (1, 3, 10002, '2020-07-05', 143000, 8), 
    (1, 4, 10001, '2020-07-05', 150000, 6),
    (1, 5, 10000, '2020-07-05', 133000, 3), 
    (2, 1, 10004, '2020-07-05', 140000, 4), 
    (2, 2, 10002, '2020-07-05', 143000, 8), 
    (2, 3, 10001, '2020-07-05', 150000, 6),  
    (2, 4, 10001, '2020-07-05', 150000, 6),  
    (2, 5, 10003, '2020-07-05', 153000, 4); 
    
create table Professores (
    ID_Prof int primary key auto_increment,
    Nome_Prof varchar (45),
    Disciplina varchar(45)
)auto_increment = 10000;

insert into Professores values
    (null,'Yoshi','Algoritmo'),
    (null,'Celia','Banco de dados'),
    (null,'Brandão','Pesquisa e inovação'),
    (null,'Thiago','Socioemocional'),
    (null,'Leonardo','Tecnologia da informação');
    
select * from Alunos;

select * from Grupos;

select * from GrupoProf;

select * from Professores;
    
select * from Alunos, Grupos where fk_Grupo = ID_Grupos;

select * from Alunos, Grupos where fk_Grupo = ID_Grupos and ID_Grupos = 3;

select avg(Nota) as 'Médias das notas' from GrupoProf;

select max(Nota) as 'Nota mais alta', min(Nota) as 'Nota mais baixa' from GrupoProf;

select sum(Nota) as 'Soma das notas' from GrupoProf;

select Professores.*, Grupos.*, Data_avaliacao, Hora_avaliacao from Professores, Grupos, GrupoProf where fk_Grupo_P = ID_Grupos and fk_Prof = ID_Prof; 

select Professores.*, Grupos.*, Data_avaliacao, Hora_avaliacao from Professores, Grupos, GrupoProf where fk_Grupo_P = ID_Grupos and Nome_Grupo = 'Grupo MC' and fk_Prof = ID_Prof; 

select Nome_Grupo, Professores.* from Grupos, Professores, GrupoProf where fk_Prof = ID_Prof and fk_Grupo_P = ID_Grupos and Nome_Prof = 'Yoshi';

select Grupos.*, Alunos.*, Professores.*, Data_avaliacao, Hora_avaliacao from Alunos, Grupos, Professores, GrupoProf where fk_Grupo = fk_Grupo_P and fk_Grupo = ID_Grupos and fk_Prof = ID_Prof;	

select count(Distinct Nota) as 'Notas diferentes' from GrupoProf;

select Nome_Prof as 'Professor', avg(Nota) as 'Média das notas', sum(Nota) as 'Soma das notas' from Professores, GrupoProf, Grupos where fk_Prof = ID_Prof and fk_Grupo = ID_Grupos group by Nome_Prof;

select Nome_Grupo as 'Grupo', avg(Nota) as 'Média das notas', sum(Nota) as 'Soma das notas' from Professores, GrupoProf, Grupos where fk_Prof = ID_Prof and fk_Grupo = ID_Grupos group by Nome_Grupo;

select Nome_Prof as 'Professor', min(Nota) as 'Nota mais baixa', max(Nota) as 'Nota mais alta' from Professores, GrupoProf, Grupos where fk_Prof = ID_Prof and fk_Grupo = ID_Grupos group by Nome_Prof;

-- Notas mais altas e mais baixas são iguais por coincidência na hora dos inserts.
select Nome_Grupo as 'Grupo', min(Nota) as 'Nota mais baixa', max(Nota) as 'Nota mais alta' from Professores, GrupoProf, Grupos where fk_Prof = ID_Prof and fk_Grupo = ID_Grupos group by Nome_Grupo;

    
