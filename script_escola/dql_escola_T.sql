USE db_escola_T

SELECT TOP 3 matricula FROM tb_aluno;

SELECT matricula 
FROM tb_aluno
ORDER BY nome ASC;

SELECT TOP 1 matricula 
FROM tb_aluno
ORDER BY id DESC;

--Lista todos os alunos
SELECT nome, cpf
FROM tb_aluno
WHERE nome = 'Lorenzo';

SELECT nome
FROM tb_escola
WHERE nome = 'Torloni';

SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'SEDUC';

SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;

SELECT COUNT(nome) AS qtd_alunos FROM tb_aluno;

SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

SELECT MAX(data_nasc) AS idade_mais_nova FROM tb_aluno;

SELECT MIN(data_nasc) AS idade_mais_velha, MAX(data_nasc) AS idade_mais_nova FROM tb_aluno;

SELECT nome, data_nasc
FROM tb_aluno
ORDER BY data_nasc;

-- media de nota que vale nas provas
SELECT AVG(nota) FROM tb_prova;

SELECT SUM(id) FROM tb_aluno;

SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_novo DESC;

--exibir quantas turmas tem de tarde
SELECT COUNT(periodo)
FROM tb_turma
WHERE periodo = 'Tarde';