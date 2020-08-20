create database AC3_Produto;
use AC3_Produto;

create table Loja (
    ID_Loja int primary key auto_increment,
    Nome_Loja varchar(45),
    Data_Fund date
)auto_increment = 1000;

insert into Loja values
    (null, 'Lojas Americanas', '1929-05-14'),
    (null, 'Submarino', '1999-01-01'),
    (null, 'Kabum', '2003-05-25'),
    (null, 'Mercado Livre', '1999-08-02'),
    (null, 'Magazine luiza', '1957-07-01');

create table LojaProd (
    primary key (ID_Venda, fk_Loja, fk_Produto),
    ID_Venda int auto_increment,
    fk_Loja int,
    fk_Produto int,
    Preço Decimal(10,2),
check (Preço > 0),
foreign key (fk_Loja)
references Loja (ID_Loja),
foreign key (fk_Produto)
references Produto (ID_Produto)
)auto_increment = 1;

insert into LojaProd values 
    (null, 1000, 100, 547.69),
    (null, 1000, 101, 472.13),
    (null, 1000, 102, 310.89),
    (null, 1000, 103, 427.00),
    (null, 1001, 104, 624.00),
    (null, 1001, 102, 634.59),
    (null, 1002, 106, 870.99),
    (null, 1002, 107, 199.99),
    (null, 1002, 108, 647.69),
    (null, 1003, 104, 674.41),
    (null, 1003, 110, 123.59),
    (null, 1004, 111, 119.99),
    (null, 1004, 102, 670.21),
    (null, 1001, 109, 599.99),
    (null, 1002, 102, 847.00),
    (null, 1003, 102, 650.99);

create table Produto (
    ID_Produto int primary key auto_increment,
    Desc_Prod varchar (65),
	Marca varchar (25),
    fk_Categ int,
foreign key (fk_Categ)
references Categoria (ID_Categ)
)auto_increment = 100;

insert into Produto values
    (null, 'Montblanc Legend Night - Eau de Parfum, 100 ml', 'MonthBlanc', 13), 
    (null, 'Montblanc Legend Spirit Eau de Toilette 50 ml', 'MonthBlanc', 13), 
    (null, 'Conjunto Montblanc Legend Spirit Eau De Toilette - 100ml', 'MonthBlanc', 13), 
    (null, 'BVLGARI MAN IN BLACK EAU DE PARFUM SPRAY 100 ML', 'Bvlgari', 13), 
    (null, 'BVLGARI MAN WOOD ESSENCE EAU DE PARFUM 100 ML', 'Bvlgari', 13), 
    (null, 'AQVA POUR HOMME MARINE EAU DE TOILETTE SPRAY 50 ML', 'Bvlgari', 13),
    (null, 'Teclado Mecânico Gamer Razer BlackWidow Essential', 'Razer', 10),
    (null, 'Headset Gamer HyperX Cloud Revolver - HX-HSCR-GM - Preto/Cinza', 'HyperX', 10),
    (null, 'Faca Chef em Aço Inox 20cm Graphix Cuisinart', 'Cuisinart ', 12),
    (null, 'Panela Sauté Petit 20cm', 'Polishop', 12),
    (null, 'Faca Santoku 18cm em Aço Inox	', 'Global Knives', 12),
    (null, 'Shampoo Head & Shoulders Anticaspa 3 em 1 200ml', 'Head & Shoulders', 13);
    

create table Categoria (
    ID_Categ int primary key auto_increment,
    Nome_Categ varchar(45)
)auto_increment = 10;

insert into Categoria values
    (null, 'Eletrônico'),
    (null, 'Cozinha'),
    (null, 'Higiene'),
    (null, 'Perfumaria');
    
    
select * from Loja;

select * from LojaProd;

select * from Produto;

select * from Categoria;

select * from Categoria, Produto where fk_Categ = ID_Categ;

select * from Categoria, Produto where fk_Categ = ID_Categ and Nome_Categ = 'Perfumaria';

select avg(Preço) as 'Média dos preços', sum(Preço) as 'Soma dos preços' from LojaProd;

select min(Preço) as 'Preço mais alto', max(Preço) as 'Preço mais baixo' from LojaProd;

select Produto.*, Loja.*, Preço from Produto, Loja, LojaProd where fk_Produto = ID_Produto and fk_Loja = ID_Loja;

select Produto.*, Loja.*, Preço from Produto, Loja, LojaProd where fk_Produto = ID_Produto and fk_Loja = ID_Loja and Desc_Prod = 'Conjunto Montblanc Legend Spirit Eau De Toilette - 100ml';

select Produto.*, Loja.*, Categoria.*, Preço from Produto, Loja, Categoria, LojaProd where fk_Produto = ID_Produto and fk_Loja = ID_Loja and fk_Categ = ID_Categ;

select Desc_Prod as 'Produto', avg(Preço) as 'Média dos preços', sum(Preço) as 'Soma dos preços' from Produto, LojaProd where fk_Produto = ID_produto  group by Desc_Prod;

select Nome_Loja as 'Loja', avg(Preço) as 'Média dos preços', sum(Preço) as 'Soma dos preços' from Loja, LojaProd where fk_Loja = ID_Loja group by Nome_Loja;

select Desc_Prod as 'Produto', min(Preço) as 'Preço mais alto', max(Preço) as 'Preço mais baixo' from Produto, LojaProd where fk_Produto = ID_Produto group by Desc_Prod;

select Nome_Loja as 'Loja', min(Preço) as 'Preço mais alto', max(Preço) as 'Preço mais baixo' from Loja, LojaProd where fk_Loja = ID_Loja group by Nome_Loja;


