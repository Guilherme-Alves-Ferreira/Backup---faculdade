create database petshop;
use petshop;

create table Cliente (
    ID_Cliente int primary key auto_increment,
    Nome varchar (45),
    Telefone_fixo varchar (20),
    Telefone_celular varchar (20),
    Rua varchar (35),
    Número_casa varchar (6),
    CEP varchar (10)
)auto_increment = 1;

insert into Cliente values 
    (null, 'João pereira da Silva', '(11) 4147-5687', '9 2568-3883', 'Paraíba da manguassa', 653, '09721-872'),
    (null, 'Carlos pereira de Andrade', '(11) 7321-9947', '9 0527-6767', 'São Pedro', 214, '12874-225');
    
insert into Cliente values 
    (null, 'Guilherme Alves Ferreira', '(11) 4144-2417', '9 4144-8998', 'Sargento Geraldo Santana', 683, '04674-225');


create table  Pet (
    ID_Pet int primary key auto_increment,
    Tipo_animal varchar (15),
    Raca varchar (20),
    Nome_animal varchar (15),
    Nascimento date,
    ID_dono int,
foreign key (ID_dono)
references Cliente (ID_Cliente)
)auto_increment = 101;

insert into Pet values
    (null, 'Cachorro', 'Labrador', 'Joaquim', 20070426, 1),
    (null, 'Gato', 'Persa', 'Garfield', 200181002, 1),
    (null, 'Gato', 'Siamês', 'Pandora', 200150115, 2);
    
select * from Cliente;

select * from Pet;

alter table Cliente modify Nome varchar (30);

select * from Pet where Tipo_animal = 'Gato';

select Nome_animal, Nascimento from Pet;

select * from Pet order by Nome_animal asc;

select * from Cliente order by CEP desc;

select * from Pet where Nome_animal like 'A%';

select * from Cliente where Nome like '% Pereira %';

Update Cliente set Telefone_fixo = '(11) 8755-2433'
    Where ID_Cliente = 3;
    
select * from Cliente;

select Cliente.*, Tipo_animal, Raca, Nome_animal, Nascimento from Pet, Cliente where ID_Dono = ID_Cliente;

select Cliente.*, Tipo_animal, Raca, Nome_animal, Nascimento from Pet, Cliente where ID_Dono = ID_Cliente and ID_Cliente = 1;

delete from Pet where ID_Pet = 101;

select * from Pet;

drop table Pet;

drop table Cliente;