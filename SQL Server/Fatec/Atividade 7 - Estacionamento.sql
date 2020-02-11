-- a) Criar atributos
Create table est_cliente
(CPF int,
Nome varchar (40),
Nascto datetime,
constraint pk_CPF primary key (CPF));
create table est_modelo
(Codmod int,
descr varchar(40),
constraint pk_codmod primary key (codmod));
create table est_patio
(Num int,
ender varchar(40),
capacidade int,
constraint pk_num primary key (num));
create table est_veiculo
(placa varchar(8),
clientecpf int,
modelo int,
cor varchar(20),
ano int,
constraint pk_placa primary key (placa),
constraint fk_clientecpf foreign key (clientecpf) references est_cliente (cpf),
constraint fk_modelo foreign key (modelo) references est_modelo (codmod));
create table est_estaciona
(codigo int,
pationum int,
placaveic varchar(8),
data_entr datetime,
data_saida datetime,
hora_entr varchar(10),
hora_saida varchar(10),
constraint pK_codigo primary key (codigo),
constraint fk_pationum foreign key (pationum) references est_patio (num),
constraint fk_placaveic foreign key (placaveic) references est_veiculo (placa));
-- b-) Inserir 5 dados nas tabelas
Insert into est_cliente values
(01233, 'Lucas', 20/04/1997),
(01234, 'Ana', 05/06/1999),
(11234,'Renan',15/03/2001),
(11223,'Felix',23/11/2001),
(22334,'Gabriel',10/01/2002);
insert into est_modelo values
(1111, 'Gol'),
(2222, 'Palio'),
(3333, 'Civic'),
(4444, 'Celta'),
(5555, 'Golf');
insert into est_patio values
(10, 'Riberão Pires', 1),
(20, 'Santo André', 2),
(30, 'Riberão Pires', 3),
(40, 'Mauá', 4),
(50, 'São Bernardo', 5);
insert into est_veiculo values
('ABC12', 01233, 1111, 'Vermelho', 2000),
('ABB11', 01234, 2222, 'Preto', 1997),
('BBC22', 11234, 3333, 'Branco', 2010),
('BCC33', 11223, 4444, 'Cinza', 2004),
('CCD44', 22334, 5555, 'Vermelho', 2007);
insert into est_estaciona values
(111, 10, 'ABC12', 10102019, 12102019, '11:00', '08:00'),
(222, 20, 'ABB11', 12102019, 15102019, '14:00', '10:00'),
(333, 30, 'BBC22', 20102019, 27102019, '09:00', '16:00'),
(444, 40, 'BCC33', 28102019, 01112019, '10:00', '12:00'),
(555, 50, 'CCD44', 01112019, 02112019, '12:00', '13:00');
-- c) Exiba a placa e o nome do dono de todos os veículos
select est_veiculo.placa, est_cliente.nome from est_veiculo inner join
est_cliente
on est_veiculo.clientecpf = est_cliente.cpf;
-- d) Exiba o CPF e o nome do cliente que possui o veículo de placa BCC33
select est_cliente.cpf, est_veiculo.placa from est_cliente inner join est_veiculo
on est_cliente.cpf = est_veiculo.clientecpf where est_veiculo.placa = 'BCC33';
-- e) Exiba a placa e a cor do veículo que possui o código de estacionamento 1
select est_veiculo.placa, est_veiculo.cor, est_estaciona.codigo from est_veiculo
inner join est_estaciona on est_veiculo.placa = est_estaciona.placaveic 
where est_estaciona.codigo = 10;
-- f) Exiba a placa e o ano do veículo que possui o código de estacionamento 1
select est_veiculo.placa, est_veiculo.ano, est_estaciona.codigo from est_veiculo
inner join est_estaciona
on est_veiculo.placa = est_estaciona.plavaveic where est_estaciona.codigo = 10;
-- g) Exiba a placa, o ano do veículo e a descrição de seu modelo, se ele possuir
ano a partir de 2000
select est_veiculo.placa, est_veiculo.ano, est_modeo.descr from est_veiculo inner
join est_modelo
on est_veiculo.modelo = est_modelo.codmod where ano>=2000;
-- h) Exiba o endereço, a data de entrada e de saída dos estacionamentos do
veículo de placa “JEX-1010”
select est_patio.ender, est_estaciona.data_entr, est_estaciona.data_saida,
est_veiculo.placa from est_estaciona
inner join est_patio on est_estaciona.pationum = est_patio.num inner join
est_veiculo on est_estaciona.placaveic
= est_veiculo.placa where est_veiculo.placa - 'ABC12';
-- j) Liste todos os clientes que possuem carro de modelo 1
SELECT EST_CLIENTE.NOME, EST_VEICULO.MODELO
FROM EST_CLIENTE INNER JOIN EST_VEICULO
ON EST_CLIENTE.CPF = EST_VEICULO.CLIENTECPF
WHERE EST_VEICULO.MODELO = 1111;
-- k) Liste as placas, os horários de entrada e saída dos veículos de cor
VERMELHO
SELECT EST_VEICULO.PLACA, EST_VEICULO.COR, EST_ESTACIONA.HORA_ENTR,
EST_ESTACIONA.HORA_SAIDA
FROM EST_VEICULO INNER JOIN EST_ESTACIONA
ON EST_VEICULO.PLACA = EST_ESTACIONA.PLACAVEIC
WHERE EST_VEICULO.COR = ‘VERMELHO’;
-- l) Liste todos os estacionamentos do veículo de placa “JJJ-2020”
SELECT EST_VEICULO.PLACA, EST_ESTACIONA.DATA_ENTR, EST_ESTACIONA.DATA_SAIDA,
EST_ESTACIONA.HORA_ENTR, EST_ESTACIONA.HORA_SAIDA
FROM EST_VEICULO INNER JOIN EST_ESTACIONA
ON EST_VEICULO.PLACA = EST_ESTACIONA.PLACAVEIC
WHERE EST_VEICULO.PLACA = ‘CCD44’;
-- m) Exiba o nome do cliente que possui o veículo cujo código do estacionamento
é 2
SELECT EST_CLIENTE.NOME, EST_ESTACIONA.CODIGO
FROM EST_VEICULO INNER JOIN EST_CLIENTE
ON EST_VEICULO.CLIENTECPF = EST_CLIENTE.CPF
INNER JOIN EST_ESTACIONA
ON EST_VEICULO.PLACA = EST_ESTACIONA.PLACAVEIC
WHERE EST_ESTACIONA.CODIGO = 20;
-- n) Exiba o CPF do cliente que possui o veículo cujo código do estacionamento é
3
SELECT EST_CLIENTE.CPF, EST_ESTACIONA.CODIGO
FROM EST_VEICULO INNER JOIN EST_CLIENTE
ON EST_VEICULO.CLIENTECPF = EST_CLIENTE.CPF
INNER JOIN EST_ESTACIONA
ON EST_VEICULO.PLACA = EST_ESTACIONA.PLACAVEIC
WHERE EST_ESTACIONA.CODIGO = 30;
-- o) Exiba a descrição do modelo do veículo cujo código do estacionamento é 2
SELECT EST_MODELO.DESCR, EST_ESTACIONA.CODIGO
FROM EST_MODELO INNER JOIN EST_ESTACIONA
ON EST_MODELO.CODMOD = EST_ESTACIONA.PATIONUM
WHERE EST_ESTACIONA.CODIGO = 20;
-- p) Exiba a placa, o nome dos donos e a descrição dos modelos de todos os
veículos
SELECT EST_VEICULO.PLACA, EST_CLIENTE.NOME, EST_MODELO.DESCR
FROM EST_VEICULO INNER JOIN EST_CLIENTE
ON EST_VEICULO.CLIENTECPF = EST_CLIENTE.CPF
INNER JOIN EST_MODELO
ON EST_VEICULO.MODELO = EST_MODELO.CODMOD;