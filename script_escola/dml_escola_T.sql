--Usar um banco ja criado
USE db_escola_T

--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das Lagrimas, 579 - São Jose');

SELECT * FROM tb_escola;

--APAGAR REGISTRO PELO SEU IDENTIFICADOR
DELETE FROM tb_escola
WHERE id = 12;

SELECT * FROM tb_escola;

INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES 
(2, 'Tarde', 16, 'SEDUC'), 
(2, 'Manha', 16, 'SEDUC'),
(2, 'Noite', 16, 'SEDUC');

SELECT * FROM tb_turma;

DELETE FROM tb_turma
WHERE id = 11;

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA DA PROVA
INSERT INTO tb_prova(nome_professor, disciplina, horario, nota, data_prova)
VALUES 
('Ana Claudia', 'Educação Física', '13:15:00', 0, '2025-09-25'),
('Rogeria', 'Matematica', '14:20:00', 9, '2025-09-26');

SELECT * FROM tb_prova;

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES
('Lorenzo', '11499959800', 'Lorenzo08', '2008-11-04', 1),
('Alexia', '58946838825', 'Alexia07', '2007-12-12', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES
('Figueira', '40015465071', 'FigueiraF1', '2008-10-22', 1);
('G.A', '48899132038', 'Gustavinho', '2008-11-03', 1);
('Matheus', '14356466063', 'Minifelix', '2008-02-17', 1);
('Gustavo', '49208275043', 'Gueba08', '2008-05-17', 1);

SELECT * FROM tb_aluno;


--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET nome = 'Gusta'
WHERE id = 9;

UPDATE tb_aluno
SET nome = 'Lorenzo'
WHERE id = 6;

SELECT * FROM tb_aluno;

INSERT INTO tb_turma_prova(id_turma, id_prova)
VALUES
(1, 1);

SELECT * FROM tb_turma_prova;