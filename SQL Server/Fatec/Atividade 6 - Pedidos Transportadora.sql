-- a) Criar as tabelas x Relacionamentos
create table Clientes
(Codcli int,
Nome varchar (30),
Endereço varchar (40),
Cidade varchar (30),
Fone char(9),
constraint pk_Codcli primary key (Codcli));
create table Transportadora
(Codigo int,
Nome varchar (20),
constraint pk_Codigo2 primary key (Codigo));
create table Pedidos
(Numped int,
Cliente int,
Data_entrega datetime,
Transport int,
constraint pk_Numped primary key (Numped),
constraint fk_Cliente foreign key (Cliente) references Clientes (Codcli),
constraint fk_Transport foreign key (Transport) references Transportadora
(Codigo));
-- b) Inserir 5 registros em cada tabela.
Insert into Clientes values
(1, 'Gabriel', 'Rua Gabriel', 'Mauá', 911111111),
(2, 'Anamir', 'Rua Anamir', 'Santo André', 922222222),
(3, 'Renan', 'Rua Renan', 'SBC', 933333333),
(4, 'Luciana', 'Rua Luciana', 'Mauá', 944444444),
(5, 'Osmil', 'Rua Osmil', 'Santo André', 955555555);
Insert into Transportadora values
(1, 'ABC Transportes'),
(2, 'SBC Transportes'),
(3, 'SAndre Transp'),
(4, 'FATEC Transportes'),
(5, 'Luciana Transportes');
insert into Pedidos values
(1, 1, 2019-20-11, 1),
(2, 2, 2019-21-11, 2),
(3, 3, 2019-22-11, 3),
(4, 4, 2019-23-11, 4),
(5, 5, 2019-24-11, 5);
-- c) Selecionar todos os pedidos da transportadora ABC.
select * from pedidos inner join Transportadora on Pedidos.transport =
Transportadora.codigo where transportadora.Nome = 'ABC Transportes';
-- d) Quantos pedidos existem para o cliente 2?
select count (*) as 'Pedidos Cliente 2' from Pedidos where Cliente = 2;
-- e) Qual o número do Pedido mais recente?
select max (Data_entrega) as 'Pedido mais recente' from Pedidos;
-- f) Temos quantos pedidos para a Transportadora ABC?
select count (*) as 'Quantidade pedidos Transportadora ABC'
from pedidos inner join Transportadora on Pedidos.transport =
Transportadora.codigo where transportadora.Nome = 'ABC Transportes';
-- g) Quantos Clientes residem em Mauá?
select count (*) as 'Clientes de Mauá' from Clientes where cidade = 'Mauá';
-- h) Selecionar Número do Pedido, Data_Entrega e Nome do Cliente.
select Pedidos.Numped, Pedidos.Data_entrega, Clientes.Nome from Pedidos inner
join Clientes on Clientes.Codcli = Pedidos.Cliente;
-- i) Selecionar Número do Pedido, Nome do Cliente e nome da Transportadora.
select Pedidos.Numped, Clientes.Nome, Transportadora.Nome from Pedidos inner join
Clientes on Clientes.Codcli = Pedidos.Cliente
inner join Transportadora on Transportadora.Codigo = Pedidos.transport;
-- j) Selecionar todos os clientes da cidade de Santo André, Mauá e SBC.
select * from Clientes where cidade = 'Santo André' or cidade = 'Mauá' or cidade
= 'SBC';