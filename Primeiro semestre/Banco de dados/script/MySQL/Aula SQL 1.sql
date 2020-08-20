-- Cria banco chamado aluno
create database aluno;
-- Seleciona o banco de dados aluno
use aluno;
-- Cria a tabela aluno
create table Aluno (
  ra int primary key,
  nome varchar (50),
  bairro varchar(40)
);
-- Exibir os dados da tabela
select * from aluno;
-- Insere dados de um aluno
insert into aluno values
    (1201054, 'Guilherme Alves', 'Santo Amaro');
    -- Insere dados de mais alunos
insert into aluno values
    (1201010, 'Larissa Souza', 'Cidade Tiradentes'),
    (1201006, 'Juliana Silva', 'Santa Paula'),
    (1201053, 'Ju Silva', 'Vila Rica'),
    (1201069, 'Guilherme de Sá', 'Bangu');
-- Exibir os nomes e os RAs dos alunos
select nome,ra from aluno;
-- Exibir os barirros, nomes e RAs dos alunos
select bairro, nome, ra from aluno;
-- Exibir os nomes da tabela ordenado pelo nome do aluno
select * from aluno order by nome;
-- Exibir os dados da tabela ordenados pelo bairro
select * from aluno order by bairro;
-- Exibir os dados da tabela ordenados pelo nome em ordem decrescente
select * from aluno order by nome desc;
-- Exibir os dados dos alunos do bairro 'Bangu'
select * from aluno where bairro = 'bangu';
-- Exibir os dados dos alunos de RA < 1201050
select * from aluno where ra < 1201050;
-- Exibir os dados dos aluno de RA <= 1201053
select * from aluno where ra <= 1201053;
-- Exibir os dados dos alunos de RA diferente de 1201054
select * from aluno where ra <> 1201053;
-- Exibir os dados dos alunos que não são do bairro 'Santo amaro'
select * from aluno where bairro <> 'Santo Amaro';
-- Exibir os dados dos alunos cujo nome começa com 'L'
select * from aluno where nome like 'L%';
select * from aluno where nome like 'G%';
select * from aluno where bairro like 'S%';
-- Exibir os dados dos alunos cujo nome termina com 'a'
select * from aluno where nome like '%A';
select * from aluno where bairro like '%A';
-- Exibir os dados cujo sobrenome é 'silva'
select * from aluno where nome like '% SILVA';
-- Exibir os dados dos alunos cujo nome tenha como segunda letra 'U'
select * from aluno where nome like '_U%';
-- Exibir os dados dos alunos cujo bairro tenha 'c' como penúltima letra
select * from aluno where bairro like '%C_';
-- Exibir os dados dos alunos cujo nome tem como terceira letra 'L'
select * from aluno where nome like '%L__';
-- Alterar o bairro do aluno 1201053 para 'higienópolis'
update aluno set bairro='higienópolos' where ra=1201053;
-- Alterar o bairro do aluno 1201006 para 'Jd São caetano'
-- e também o nome para 'Juliana Rabelo'
update aluno set bairro='Jd São Caetano',
				 nome = 'Juliana Rabelo'
		where ra = 1201006;
-- Excluir a tabela
drop table aluno;

-- Excluir o banco de dados
drop database aluno;

select * from aluno order by ra asc; 

    


        