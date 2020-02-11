-- a-) Criar as seguintes tabelas:
create table Clientes
(Codcli int,
Nome varchar (30),
Ender varchar (40),
Bairro varchar (20),
Cidade varchar (20),
Idade int,
constraint pk_Codcli primary key (Codcli));

create table Produtos
(Codprod int,
Descricao varchar (20),
Preco numeric (9,2),
constraint pk_Codprod primary key (Codprod));

create table Pedidos
(Codped int,
Codcli int,
Data datetime,
constraint pk_Codped primary key (Codped),
constraint fk_Codcli foreign key (CodCli) references Clientes (Codcli));

create table Itens_pedido 
(Codped int,
Codprod int,
Qtde int,
constraint pk_Itens primary key (Codped, Codprod),
constraint fk_Codped foreign key (Codped) references Pedidos (Codped),
constraint fk_Codprod foreign key (Codprod) references Produtos (Codprod));

-- b-) Inserir 5 registros
insert into Clientes values
(1, 'Gabriel', 'Rua Carlos', 'Sonia Maria', 'Maua', 21),
(2, 'Jéssica', 'Rua Arapoca', 'Vila Metalurgica', 'Santo Andre', 27),
(3, 'Lucas', 'Rua dos Bobo', 'Jardim Primaveira', 'SBC', 26),
(4, 'Vinicius', 'Avenida Goias', 'Jardim Barcelona', 'SCS', 29),
(5, 'Anamir', 'Rua Zairão', 'Jardim Zaira', 'Maua', 18);

insert into Produtos values
(11, 'Guitarra SG', 1500.00),
(12, 'Guitarra Les Paul', 3200.00),
(13, 'Guitarra Semi Acust', 5700.00),
(14, 'Violão Tagima', 980.00),
(15, 'Violão Hofma', 780.00);

insert into Pedidos values
(101, 1, 21/09/2019),
(102, 2, 22/09/2019),
(103, 3, 22/09/2019),
(104, 4, 23/09/2019),
(105, 5, 24/09/2019);

insert into Itens_pedido values
(101, 11, 10),
(102, 12, 20),
(103, 13, 30),
(104, 14, 40),
(105, 15, 50);

-- c-) Selecionar todos os produtos com preço entre 10 e 70:
Select * from Produtos where preco between 10 and 70; 

-- d-) Qual a média de idade dos clientes:
select AVG (idade) as 'Media de Idade dos Clientes' from Clientes;

-- e-) Qual a média dos preços dos produtos:
select AVG (preco) as 'Media de preço' from Produtos;

-- f-) Quantos pedidos temos no cadastro:
select count (codped) as 'Quantidade de pedidos' from Itens_pedido;

-- g-) Selecionar todos os clientes que moram em Santo Andre, SBC, SCS ou Mauá:
select * from clientes where cidade = 'Santo Andre' or cidade = 'SBC' or cidade = 'SCS' or cidade = 'Maua';
