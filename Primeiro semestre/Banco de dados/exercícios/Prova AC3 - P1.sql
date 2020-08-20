create database  Prova_AC3_1;
use  Prova_AC3_1;

create table Editora (
    ID_Editora int primary key auto_increment,
    Nome_Editora varchar(45),
    Telefone char(13)
);

insert into Editora values 
    (null, 'Abril' ,'(11)46582147'),
    (null, 'Capricho' ,'(11)19481548'),
    (null, 'Veja' ,'(11)934834878'),
    (null, 'IstoÉ' ,'(11)48481356'),
    (null, 'Multifoco' ,'(11)916344568');

create table Livro (
    ID_Livro int primary key auto_increment,
    Titulo varchar(45),
    Preco decimal(9,2),
check (Preco > 0),
    Genero varchar (20),
    FK_Editora int,
foreign key (FK_Editora)
references Editora (ID_Editora)
)auto_increment = 100;

insert into Livro values
    (null, 'A Odisséia', '78.65', 'Mitologia Grega', 3),
    (null, 'Dom Quixote', '50', 'Romance moderno', 1),
    (null, 'Guerra e paz', '352.20', 'Mitologia Grega', 2),
    (null, 'Ulisses', '39.99', 'Mitologia Grega', 4),
    (null, 'Orgulho e preconceito', '72.19', 'Relfexivo', 1),
    (null, 'Crepúsculo', '69.99', 'Vampirismo', 2),
    (null, 'The walking dead', '97.45', 'Apocalipse zumbi', 3),
    (null, 'Homem-Aranha: Entre Trovões', '10.99', 'Heróis', 5),
    (null, 'Thor Vs. Seth', '22', 'Mitologia nórdica', 4),
    (null, 'O Mar de Monstros', '47.87', 'Mitologia Grega', 3),
    (null, 'O Ladrão de Raios', '167.99', 'Mitologia Grega', 5),
    (null, 'The Ultimates', 174.21, 'Quadrinhos', 1);

create table Exemplar (
    primary key (ID_Exemplar, FK_Livro),
    ID_Exemplar int,
    Data_publicacao date,
    FK_Livro int,
foreign key (FK_Livro)
references Livro (ID_Livro)
);

insert into Exemplar values
    (1, '1974-05-27', 110),
    (2, '1974-05-27', 110),
    (1, '1974-05-27', 107),
    (1, '1974-05-27', 100),
    (2, '1974-05-27', 107),
    (3, '1974-05-27', 110),
    (1, '1974-05-27', 106);
    

select * from Editora;

select * from Livro;

select * from Exemplar;

select Nome_Editora, Telefone, Livro.* from Editora, Livro where ID_Editora = FK_Editora;

select Nome_Editora, Telefone, Livro.* from Editora, Livro where Nome_Editora = 'Veja' and ID_Editora = FK_Editora;

select * from Livro, Exemplar where ID_Livro = FK_Livro;

select * from Livro, Exemplar where Titulo = 'Homem-Aranha: Entre Trovões' and ID_Livro = FK_Livro;

select * from Editora, Livro, Exemplar where ID_Editora = FK_Editora and ID_Livro = FK_Livro;

select sum(preco) as 'Soma dos preços dos livros', avg(preco) as 'Média dos preços dos livros' from Livro;

select max(preco) as 'Maior preço', min(preco) as 'Menor preço' from Livro;

select count(preco) as 'Quantidade de preços cadastrados' from Livro;

select count(preco) as 'Quantidade de preços cadastrados' from Livro where preco > 30;
