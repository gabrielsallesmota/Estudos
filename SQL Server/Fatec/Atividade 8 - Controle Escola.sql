--a) Criar tabelas e atributos
Create table cursos
(Codcurso int,
Nome varchar(20),
Constraint PK_Codcurso Primary key(CodCurso));
Create table disciplinas
(Codisc int,
Nome varchar(20),
Constraint PK_Codisc primary key(Codisc));
Create table alunos
(RM int,
Nome varchar(45),
Curso int,
Serie int,
Periodo varchar(20),
constraint PK_RM primary key(RM),
Constraint FK_Curso foreign key(Curso) references Cursos(Codcurso));
CREATE TABLE NOTAS
(RM int,
Discipl int,
Nota1 numeric(10,2),
Nota2 numeric(10,2),
Constraint PK_RM1 primary key (RM, Discipl),
Constraint FK_RM2 foreign key(RM) references alunos(RM),
Constraint FK_Discipl foreign key(Discipl) references disciplinas(Codisc));
alter table add constraint PK_RM primary key (RM, Discipl);
-- b) Inserir 5 registros em cada tabela.
insert into cursos values
(101, 'Informatica'),
(102, 'Plastico'),
(103, 'Gastronomia'),
(104, 'Ciencia'),
(105, 'Matematica');
insert into disciplinas values
(210, 'Estrutura'),
(220, 'Banco de dados'),
(230, 'Cozinha Indiana'),
(240, 'Ecossistema'),
(250, 'Calculo');
insert into ALUNOS values
(1111,'LUCAS',101, 3,'MANHÃ'),
(2222,'ANA',102, 2,'MANHÃ'),
(3333,'RENAN',103, 2,'MANHÃ'),
(4444,'GABRIEL',104, 4, 'NOITE'),
(5555,'FELIX',105, 1, 'NOITE');
INSERT INTO NOTAS VALUES
(1111, 210, 10, 9),
(2222, 220, 8.5,8),
(3333, 230, 7, 7.8),
(4444, 240, 8, 5.5),
(5555, 250, 6, 2.4);
-- c) Selecionar nome, período e série de todos os alunos do curso de
Informática;
select alunos.nome, alunos.periodo, alunos.serie from alunos inner join cursos on
alunos.curso = cursos.codcurso where cursos.nome = 'Informática';
-- d) Selecionar Nome do aluno, curso, nome da disciplina, nota1 e nota2, de
todos os alunos.
select alunos.nome, cursos.nome, disciplinas.nome, notas.nota1, notas.nota2 from
alunos inner join cursos on alunos.curso = cursos.codcurso inner join notas on
alunos.rm = notas.rm inner join disciplinas on disciplinas.codisc = notas.discpl;
-- e) Selecionar todas as notas do aluno (Seu nome);
select alunos.nome, notas.nota1, notas.nota2 from alunos inner join notas on
alunos.rm = notas.rm where alunos.nome = 'Lucas';
-- f) Selecionar RM, nome e curso de todos os alunos com nota1 superior a 8 na
disciplina Matemática;
select alunos.RM, alunos.nome, notas.nota1, cursos.nome2 from alunos inner join
cursos on alunos.curso = cursos.codcurso inner join notas on alunos.rm = notas.rm
where notas.nota1 >= 8 and cursos.nome ='Matemática';
-- g) Quantas notas (nota1) inferior a 6,0, em Banco de Dados, temos no Cadastro
de Notas?
select alunos.nome, notas.nota1 from alunos inner join notas on alunos.rm =
notas.rm where notas.nota1 <= 6;
-- h) Qual a média de Notas (Nota2) na disciplina LPII?
select avg (notas.nota2) from notas inner join disciplinas on nota.discipl =
disciplinas.codisce where disciplinas.nome = 'Estrutura';
-- i) Quantos alunos temos no curso de Informática?
select count (alunos.nome) from alunos inner join curso on alunos.curso =
cursos.codcurso where cursos.nome = 'Informática';
-- j) Quantos alunos temos no curso de Plástico?
select count (alunos.nome) from alunos inner join cursos on alunos.curso =
cursos.codcurso where cursos.nome = 'Plastico';