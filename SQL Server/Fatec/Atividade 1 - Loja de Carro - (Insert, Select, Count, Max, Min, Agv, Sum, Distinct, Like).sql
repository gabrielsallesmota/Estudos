create table lojacarro	
(placa char (7),
Modelo varchar (20),
Fabricante varchar(20),
Ano int,
Cor varchar(20),
Combustivel varchar(20),
Preço numeric(10,2),
Constraint PK_Placa2 Primary Key (Placa));

SELECT*FROM LOJACARRO;

--b) Inserir 10 registros
insert into lojacarro values
('BFD4569', 'COBALT', 'GM', 2013, 'PRATA', 'FLEX', 29990.00),
('GBR1234', 'BRASILIA', 'VW', 1980, 'CINZA', 'GASOLINA', 28000.00),
('EQW7894', 'GOL', 'VW', 2008, 'VERMELHO', 'GASOLINA',19000.00),
('PAR2489', 'PALIO', 'FIAT', 2012, 'BRANCO','GASOLINA', 25000.00),
('HYG1473', 'COROLLA', 'TOYOTA', 2014, 'PRATA', 'FLEX',57000.00),
('RAN9654', 'PRISMA','GM', 2016, 'CINZA', 'FLEX', 45000.00),
('TGH1259', 'UNO', 'FIAT', 2009, 'PRETO', 'FLEX', 13500.00),
('HGE1281', 'ONIX', 'GM', 2015, 'VERMELHO', 'FLEX', 32000.00),
('BGF2147', 'FIESTA', 'FORD', 2013, 'PRETO', 'FLEX', 44000.00),
('JKW1483', 'FUSCA', 'VW', 1968, 'AZUL', 'ALCOOL', 18000.00);


--c) Selecionar todos os veículos com modelo iniciado pela letra ‘F’
SELECT*FROM lojacarro WHERE Modelo LIKE 'F%';
 
--d) Selecionar todos os veículos de ano entre 2000 e 2008
SELECT*FROM lojacarro WHERE ANO BETWEEN 2000 AND 2008;

--e) Selecionar todos de combustível FLEX
SELECT*FROM lojacarro where Combustivel= 'flex';

--f) Selecionar todos do fabricante GM com ano superior a 2001;
select*from lojacarro where Fabricante= 'GM' AND Ano > 2001;

--g) Qual a média de preço dos veículos;
SELECT AVG(PREÇO)AS 'MEDIA PREÇO' FROM lojacarro;

--h) Qual o valor do veículo mais caro;
SELECT MAX (PREÇO) AS 'VEICULO MAIS CARO' FROM lojacarro;

--i) Qual o valor do veículo mais barato;
SELECT MIN (PREÇO) AS 'VEICULO MAIS BARATO' FROM lojacarro;

--j) Acrescentar um aumento de 10% para todos os veículos do fabricante FIAT;
UPDATE lojacarro2
SET PREÇO=PREÇO*1.10 WHERE MODELO='FIAT';

--k) Quantos veículos prata temos no cadastro?
SELECT COUNT (*) AS 'QTD CARROS' FROM lojacarro;

--l) Qual o somatório dos preços?
SELECT SUM (PREÇO) AS 'SOMA PREÇOS' FROM lojacarro;

--m) Excluir do cadastro todos os veículos com ano inferior a 1985;
DELETE FROM lojacarro
where ano<1985;

--n) Selecionar todos dos fabricantes: GM, FORD e TOYOTA;
select*from lojacarro
where fabricante in ('GM','FORD','TOYOTA');

--o) Listar todos os fabricantes, sem duplicidade.
SELECT DISTINCT FABRICANTE FROM lojacarro;
