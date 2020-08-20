create database Exercicio11;
use Exercicio11;

create table Departamento (
    idDepto int primary key,
    nomeDepto varchar (45),
    fkGerente int,
    dataInicioGer date
);

alter table Departamento add foreign key (fkGerente) references Funcionario (idFunc);

insert into Departamento values
    (105, 'Pesquisa', 2, '2008-05-22'),
    (104, 'Administração', 7, '2015-01-01'),
    (101, 'Matriz', 8, '2001-06-19');

create table Funcionario (
    idFunc int primary key,
    nomeFunc varchar (30),
    Salario decimal (6,2),
check (Salario > 0),
    Sexo char (1),
check (Sexo = 'm' or Sexo = 'f'), 
    fkSupervisor int,
    dataNasc date,
    fkDepto int,
foreign key (fkDepto)
references Departamento (idDepto)
);

insert into Funcionario values
    (1, 'João Silva', 3500, 'm', 2, '1985-01-09', 105),
    (2, 'Fernando Wong', 4500, 'm', 8, '1975-12-08', 105),
    (3, 'Alice Sousa', 2500, 'f', 7, '1988-01-19', 104),
    (4, 'Janice Morais', 4300, 'f', 8, '1970-06-20', 104),
    (5, 'Ronaldo Lima', 3800, 'm', 1, '1982-09-15', 105),
    (6, 'Joice Leite', 2500, 'f', 1, '1992-07-31', 105),
    (7, 'Antonio Pereira', 2500, 'm', 4, '1989-03-29', 104),
    (8, 'Juliano Brito', 5500, 'm', null, '1957-11-10', 101);

alter table Funcionario add foreign key (fkSupervisor) references Funcionario (idFunc);

create table Projeto (
    idProj int primary key,
    nomeProj varchar (45),
    localProj varchar (20),
    fkDepto int,
foreign key (fkDepto)
references Departamento (idDepto)
);

insert into Projeto values
    (1, 'Produto X', 'Santo Andre', 105),
    (2, 'Produto Y', 'Itú', 105),
    (3, 'Produto Z', 'São Paulo', 105),
    (10, 'Informatização', 'Mauá', 104),
    (20, 'Reorganização', 'São Paulo', 101),
    (30, 'Benefícios', 'Mauá', 104);

create table FuncProj (
    primary key (fkFunc, fkProj),
    fkFunc int,
foreign key (fkFunc)
references Funcionario (idFunc),
    fkProj int,
foreign key (fkProj)
references Projeto (idProj),
    horas decimal (3,1)
);

insert into FuncProj values 
    (1, 1, 32.5),
    (1, 2, 7.5),
    (5, 3, 40),
    (6, 1, 20),
    (6, 2, 20),
    (2, 2, 10),
    (2, 3, 10),
    (2, 10, 10),
    (2, 20, 10),
    (3, 30, 30),
    (3, 10, 10),
    (7, 10, 35),
    (7, 30, 5),
    (4, 30, 20),
    (4, 20, 15),
    (8, 20, null);
    
select * from Departamento order by idDepto desc;

select * from Funcionario;

select * from Projeto;

select * from FuncProj;

insert into Funcionario values
    (null, 'Celia Ribeiro', 2800, 'f', null, '1980-04-05', 104);
    
-- Motivo do erro: Toda chave primária, por padrão, vem com a propriedade 'NOT NULL', o que impede que ele não seja preenchida ou seja preenchida com 'NULL'.alter

insert into Funcionario values
    (3, 'Alice Sousa', 2800, 'f', 4, '1980-04-05', 104);
    
-- Motivo do erro: Toda chave primária, por padrão, vem com a propriedade 'UNIQUE', o que impede que hajam dois valores iguais na coluna em que a chave primária foi configurada.

insert into Funcionario values
    (9, 'Celia Ribeiro', 2800, 'f', 4, '1980-04-05', 107);

-- Motivo do erro: A última coluna é um chave estrangeira que referencia a chave primária da tabela 'Departamentos', por não existir uma tupla com o id = 107, a chave estrangeira não pode ser inserida.alter

insert into Funcionario values
    (9, 'Celia Ribeiro', 2800, 'f', 4, '1980-04-05', 104);
    
-- Os valores foram inseridos pois está respeitando as propriedades de todas as colunas da tabela.

delete from FuncProj where fkFunc = 3 and 11;

-- Resultado: As alterações foram feitas pois a coluna usada na condição faz parte da chave primária, mesmo que não seja única.alter

delete from Funcionario where idFunc = 4;

-- Motivo do erro: Não é possível apagar uma tupla se a coluna da qual ela faz parte estiver sendo referenciada por uma coluna de outra tabela ainda existente.

delete from Funcionario where idFunc = 2;
    
-- Motivo do erro: Não é possível apagar uma tupla se a coluna da qual ela faz parte estiver sendo referenciada por uma coluna de outra tabela ainda existente.

update Funcionario set Salario = 2800 where idFunc = 3;

-- Update feito pois o dado não está sendo referenciado por nenhuma outra tabela dentro do banco de dados.

update Funcionario set fkDepto = 101 where idFunc = 3;

-- Update feito pois o que está senso alterado é uma chave estrangeira cujo novo valor existe dentro da coluna referenciada.

update Funcionario set fkDepto = 101 where idFunc = 3;

-- Motivo do erro: Update não foi feito pois o que está senso alterado é uma chave estrangeira cujo novo valor não existe dentro da coluna referenciada.

select dataNasc, Salario from Funcionario where nomeFunc = 'João Silva';

select Salario from Funcionario;

select distinct Salario from Funcionario;

select * from Funcionario order by nomeFunc;

select * from Funcionario order by Salario desc;

select * from Funcionario where Salario > 2000 and Salario < 4000;

select nomeFunc, Salario from Funcionario where nomeFunc like 'J%';

select nomeFunc, Salario from Funcionario where nomeFunc like '%A';

select nomeFunc from Funcionario where nomeFunc like '__N%';

select nomeFunc, dataNasc from Funcionario where nomeFunc like '%S____';

select nomeFunc from Funcionario where fkDepto = 105;

select nomeFunc from Funcionario where fkDepto = 105 and Salario > 3500;

select nomeFunc from Funcionario where fkDepto = 105 and nomeFunc like 'J%';

select idFunc, nomeFunc, idProj, nomeProj, horas from Funcionario, Projeto, FuncProj where fkProj = idProj and fkFunc = idFunc;

select * from Funcionario where dataNasc < '1980-01-01';

select count(distinct Salario) as 'Quantidade de salários diferentes na empresa' from Funcionario;

select count(distinct localProj) as 'Quantidade de locais diferentes de projeto' from Projeto;

select min(Salario) as 'Menor salário', max(Salario) as 'Maior salário' from Funcionario;

select distinct(idDepto) as 'Identificador', avg(Salario) as 'Salário médio', sum(Salario) as 'Soma dos salários' from Funcionario, Departamento where fkDepto = idDepto group by idDepto;

select distinct(idDepto) as 'Identificador', min(Salario) as 'Menor salário', max(Salario) as 'Maior salário' from Funcionario, Departamento where fkDepto = idDepto group by idDepto;

insert into Funcionario values
    (10, 'José da Silva', 1800, 'm', 3, '2000-10-12', null),
    (11, 'Benedito Almeida', 1200, 'm', 5, '2001-09-01', null);
    
insert into Departamento values
    (110, 'RH', 3, '2018-11-10');