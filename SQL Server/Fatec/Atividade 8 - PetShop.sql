--a) Criar as seguintes tabelas x relacionamentos:
create table Animais
(Codigo int,
Raça int,
Nome varchar (20),
Idade int,
Cor char(20),
Porte char(20),
Dono int,
Tipo varchar(20),
constraint pk_Codigo1 primary key (Codigo));
go
create table Donos
(Cod_dono int,
Nome varchar(40),
Fone char(10),
Endereço varchar(40),
Cidade varchar(20),
Bairro varchar(20),
constraint pk_CodDono primary key (Cod_dono));
go
create table Raças
(Cod_raça int,
Descrição varchar(30),
constraint pk_Codraça primary key (Cod_raça));
go
create table Agendamento
(Cod_agd int,
Data datetime,
Animal int,
constraint pk_Codagd primary key (Cod_agd));
go
create table Serviços
(Cod_serv int,
Descrição varchar(30),
Preço numeric (10,2),
constraint pk_Codserv primary key (Cod_serv));
go
create table Itens_agendados
(Cod_agd int,
Cod_serv int,
Horário char(4),
constraint pk_Codagd2 primary key (Cod_agd, Cod_serv));
Alter table animais add constraint fk_Codraça2 foreign key (Raça) references
Raças (Cod_raça);
go
Alter table animais add constraint fk_Coddono foreign key (Dono) references Donos
(Cod_dono);
go
Alter table Agendamento add constraint fk_Animal foreign key (Animal) references
Animais (Codigo);
go
Alter table Itens_agendados add constraint fk_Codagd foreign key (Cod_agd)
references Agendamento (Cod_agd);
go
Alter table Itens_agendados add constraint fk_Codserv foreign key (Cod_serv)
references Serviços(Cod_serv);
-- b) Inserir 10 registros em cada tabela;
insert into Raças values
(01, 'Shi-tzu'),
(02, 'Golden'),
(03, 'Gato'),
(04, 'Labrador'),
(05, 'Vira-lata'),
(06, 'Fox'),
(07, 'Chow-Chow'),
(08, 'Calopsita');
insert into Donos values
(01, 'Anamir', 11111111, 'Rua Anamir', 'Mauá', 'Zaira'),
(02, 'Gabriel S.', 22222222, 'Rua Gabriel', 'Mauá', 'Sonia Maria'),
(03, 'Renan', 33333333,'Rua Renan', 'Riberao Pires', 'Centro'),
(04, 'Lucas', 44444444, 'Rua Lucas', 'Riberao Pires', 'Centro'),
(05, 'Nicolas', 55555555, 'Rua Nicolas', 'Mauá', 'Zaira'),
(06, 'Cida', 66666666, 'Rua Cida', 'Mauá', 'Sonia Maria'),
(07, 'Gabriel R.', 77777777,'Rua R.', 'Riberao Pires', 'Centro'),
(08, 'Renato', 88888888, 'Rua Renato', 'Riberao Pires', 'Centro'),
(09, 'Joao', 99999999, 'Rua Joao', 'Sao Bernardo', 'Rudge Ramos'),
(10, 'Jonas', 10101010, 'Rua Jonas', 'Sao Caetano', 'Barcelona');
insert into Animais values
(01, 01, 'Duke', 4, 'Preto', 'Medio', 01, 'Canino'), --Anamir
(02, 02, 'Einstein', 2, 'Amarelo', 'Grande', 02, 'Canino'), --Gabriel S.
(03, 03, 'Gatinho', 6, 'Marrom', 'Grande', 03, 'Felino'), --Renan
(04, 04, 'Manolo', 8, 'Branco', 'Grande', 03, 'Canino'), --Renan
(05, 05, 'Princesa', 3, 'Preto', 'Medio', 04, 'Canino'), --Lucas
(06, 06, 'Billy', 7, 'Preto', 'Pequeno', 05, 'Canino'), --Nicolas
(07, 01, 'Rogi', 1, 'Branco', 'Pequeno', 06, 'Canino'), --Cida
(08, 07, 'Bob', 3, 'Marrom', 'Grande', 07, 'Canino'), --Gabriel R.
(09, 08, 'Freddy', 4, 'Amarelo', 'Pequeno', 01, 'Ave'), -- Anamir
(10, 02, 'Felisberto', 1, 'Marrom', 'Grande', 02, 'Canino'); --Gabriel S.
insert into Agendamento values
(01, 21/11/2019, 01),
(02, 22/11/2019, 02),
(03, 23/11/2019, 03),
(04, 24/11/2019, 04),
(05, 25/11/2019, 05),
(06, 26/11/2019, 06),
(07, 27/11/2019, 07),
(08, 28/11/2019, 08),
(09, 29/11/2019, 01),
(10, 30/11/2019, 02);
insert into Serviços values
(01, 'Vacina Raiva', 20.00),
(02, 'Consulta Básica', 40.00),
(03, 'Consulta + Vacina', 150.00),
(04, 'Exame Parvovirose', 100.00),
(05, 'Exame de Sangue', 60.00),
(06, 'Consulta Básica', 40.00),
(07, 'Vacina Raiva', 20.00),
(08, 'Consulta + Vacina', 150.00),
(09, 'Exame Parvovirose', 100.00),
(10, 'Exame de Sangue', 60.00);
insert into Itens_agendados values
(01, 01, 1200),
(02, 02, 1300),
(03, 03, 1400),
(04, 04, 1500),
(05, 05, 1100),
(06, 06, 1000),
(07, 07, 0900),
(08, 08, 0800),
(09, 09, 1600),
(10, 10, 1800);
-- c) Selecionar o código do animal, o código da raça, descrição da raça, porte e
o nome do dono;
select animais.codigo, raças.cod_raça, raças.descrição, animais.porte, donos.nome
from Animais inner join Raças
on Cod_raça = Animais.Raça inner join Donos on Cod_dono = Animais.dono;
-- d) Listar os registros e campos de todos os animais da raça Shi-tzu;
select * from Animais where Raça = 'Shi-tzu';
-- e) Qual a idade do animal mais velho?
select max (Idade) as 'Animal mais velho' from Animais;
-- f) Listar todos os registros e campos dos serviços com preço entre 20 e 50
reais;
select * from serviços where preço between 20 and 50;
-- g) Listar código do agendamento, data e nome do animal;
select Agendamento.Cod_agd, Agendamento.Data, Animais.Nome
from Agendamento
inner join Animais on Animais.Codigo = Agendamento.Animal;
-- h) Quantos itens tem o agendamento 01?
select count (*) as 'Itens Agendamento 01' from Agendamento where cod_agd = 1;
-- i) Listar código do agendamento, descrição do serviço e horário, de todos os
serviços agendados.
select Serviços.Descrição, Itens_agendados.Horário, Itens_agendados.Cod_agd
from Itens_agendados
inner join Serviços on Serviços.Cod_serv = Itens_agendados.Cod_serv;
-- j) Listar o nome do animal, nome do dono, de todos os animais do tipo canino.
select Animais.Nome, Animais.Dono
from Animais
inner join Donos on Donos.Cod_dono = Animais.Dono where Tipo = 'Canino';
-- k) Listar o nome do animal,Tipo, Porte e data Agendamento, independentemente
se tenham ou não agendamentos.
select Animais.nome, animais.tipo, animais.porte, Agendamento.data from Animais
inner join Agendamento on Agendamento.Animal = Animais.Codigo;
-- l) Listar todos os agendamentos da data igual à mais recente.
select max (Data) as 'Agendamento data igual mais recente' from Agendamento