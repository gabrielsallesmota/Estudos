CREATE TABLE PRODUTOS
(Codprod int,
Descrição varchar(20),
Preco numeric(9,2),
Qtde int,
Cor char(20),
Constraint PK_Codprod Primary Key (Codprod));

SELECT*FROM PRODUTOS;

--b) Inserir 10 registros;
INSERT INTO PRODUTOS VALUES 
(01, 'CADERNO', 5.00,  10, 'VERMELHO'),
(02,'CADERNO BROCHURA', 5.70, 10, 'AZUL'),
(03,'CANETA ESFEROGRAFICA', 1, 32, 'PRETO'),
(04, 'APONTADOR', 2.40, 41, 'ROSA'),
(05, 'BORRACHA', 1.50, 28, 'BRANCO'),
(06, 'FOLHA DE ALMAÇO', 0.10, 210, 'BRANCO'),
(07, 'CANETA GEL BIC', 2.10, 24, 'PRATA'),
(08, 'LAPIS HB', 0.80, 60, 'PRETO'),
(09, 'TESOURA ESCOLAR', 4.80, 10, 'VERMELHO'),
(10, 'ESTOJO', 6.20, 7,'BRANCO');


--c) Quantos produtos temos no cadastro?
SELECT COUNT (*) AS 'QTD PRODUTOS' FROM PRODUTOS;

--d) Selecionar os produtos com preço entre 10 e 50 reais.
SELECT*FROM PRODUTOS WHERE PRECO BETWEEN 10 AND 50;

--e) Qual o valor do produto mais caro?
 SELECT MAX (PRECO) AS 'PRODUTO MAIS CARO' FROM PRODUTOS;

--f) Qual o valor do produto mais barato?
SELECT MIN (PRECO) AS 'PRODUTO MAIS BARATO' FROM PRODUTOS;

--g) Qual a média de preços?
SELECT AVG (PRECO) AS 'MEDIA PREÇOS' FROM PRODUTOS;

--h) Quantos produtos vermelhos temos no cadastro?
SELECT COUNT (COR) AS 'QTD VERMELHO' FROM PRODUTOS;

--i) Atualizar o preço dos produtos com preço abaixo de 10.00 acrescentando 15%;
UPDATE PRODUTOS
SET PRECO=PRECO*1.15 WHERE PRECO<10;

--j) Atualizar o preço dos produtos com preço acima de 500.00 com um desconto de 5%
UPDATE PRODUTOS
SET PRECO=PRECO/1.05 WHERE PRECO>500; 

--k) Excluir todos os produtos com qtde abaixo de 5;
DELETE FROM PRODUTOS
WHERE QTDE<5;

--l) Listar as cores sem duplicidade
SELECT DISTINCT COR FROM PRODUTOS;

--m) Selecionar todos os produtos de cor Azul, vermelho, branco e preto.
SELECT*FROM PRODUTOS
WHERE COR IN ('AZUL', 'BRANCO', 'VERMELHO', 'PRETO');

--n) Qual o somatório das quantidades?
SELECT SUM (QTDE) AS 'SOMA QUANTIDADE' FROM PRODUTOS;

--o) Listar todos os produtos que tem descrição iniciado em ‘A’.
SELECT*FROM PRODUTOS WHERE DESCRIÇÃO LIKE 'A%';
