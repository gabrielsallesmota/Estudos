-- a) Criar a tabela.
create table CDS
(Codigo int,
Nome varchar (30),
Data_compra datetime,
Valor_pago numeric (10,2),
Local_compra varchar (20),
Album int,
constraint pk_Codigo primary key (Codigo));
-- b) Inserir 5 registros.
insert into CDS values
(20, 'Humanos', 03-10-2008, 20.99, 'Americanas', 1),
(21, 'Resgate', 10-04-2007, 16.99, 'Submarino', 1),
(25, 'Os Arrais', 30-11-2016, 10.99, 'Saraiva', 0),
(30, 'Supernova', 27-07-2013, 14.29, 'Saraiva', 0),
(41, 'Histórias e Bicicletas', 20-06-2018, 19.99, 'Shoptime', 1);
-- c) Mostrar todos os CDs.
select * from CDS;
-- d) Mostrar os campos nome e data_compra.
select Nome, Data_compra from CDS;
-- e) Mostrar o total gasto com a compra dos Cds
select sum (Valor_pago) as 'Valor Gasto com CDs' from CDs;
-- f) Mostre a quantidade de Cds.
select count (*) as 'Qnt CDs' from CDs;
-- g) Mostre o nome de todos cds comprados no Submarino.
select * from CDs where Local_compra = 'Submarino';
-- h) Mostrar todos os cds que são álbuns.
select * from CDs where Album = 1;
-- i) Mostre o cd que custou mais caro.
select max (Valor_pago) as 'CD mais caro' from CDs;
-- j) Mostrar todos os CDs que tem nome iniciado pela letra “R”.
select * from CDs where Nome like 'R%';
-- k) Mostrar a média de preços dos CDs.
select avg (Valor_pago) as 'Média Valores' from CDs;
-- l) Quantos CDs foram comprados na Americanas?
select count (*) as 'Qnt CDs comprados na Americanas' from CDs where Local_compra
= 'Americanas';
-- m) Atualizar o preço dos CDs reajustando em 10%.
update CDs set Valor_pago = Valor_pago *1.1;
-- n) Mostrar todos os CDs comprados no Submarino, Americanas e Saraiva.
select * from CDs where Local_compra = 'Submarino' or Local_compra = 'Saraiva' or
Local_compra = 'Americanas';
-- o) Mostrar todos os CDs com código entre 20 e 30 inclusive.
select * from CDs where Codigo between 20 and 30;
-- p) Mostrar todos os CDs cujo valor pago seja maior que 25,00.
select * from CDs where Valor_pago > 25.00;
-- q) Mostrar o preço do CD mais barato.
select min (Valor_pago) as 'CD mais barato' from CDs;
-- r) Mostrar todos os locais de compra,sem duplicidade.
select distinct Local_compra from CDs;
-- s) Selecionar todos com o Valor_pago acima da média.
SELECT*from CDs where Valor_pago >(SELECT AVG(Valor_pago)FROM CDs);
-- t) Selecionar todos com a data da Compra igual à data mais recente.
SELECT * FROM CDS WHERE DATA_COMPRA=(SELECT MIN(Data_Compra) FROM CDS);
-- u) Quantos CDs estão com valor_pago abaixo da média?
SELECT*from CDs where Valor_pago <(SELECT AVG(Valor_pago)FROM CDs);