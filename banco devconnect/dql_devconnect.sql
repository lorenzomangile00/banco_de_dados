USE db_devconnect;

SELECT nome_completo, nome_usuario, email
FROM tb_usuario
WHERE nome_completo = 'Veiga Nata SP';

SELECT nome_completo, nome_usuario, email
FROM tb_usuario
WHERE nome_completo = 'Gomez Capitao';

SELECT data_comentario
FROM tb_comentario
WHERE texto = 'Raphael Craque Veiga ta voltando em';

SELECT MAX(texto) AS comentario_recente FROM tb_comentario
GROUP BY texto, data_comentario
ORDER BY comentario_recente DESC; 

SELECT COUNT(nome_usuario) AS qtd_usuarios FROM tb_usuario;

SELECT SUM(id) FROM tb_usuario;

SELECT MIN(email) AS email_do_perfil FROM tb_usuario
GROUP BY email
ORDER BY email_do_perfil DESC;

