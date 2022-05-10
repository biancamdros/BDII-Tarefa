## QUESTÃO 8

CREATE VIEW dep_projetos(gerente ,descricao, projeto) 
AS SELECT d.cod_gerente, d.descricao, COUNT(p.cod_depto)
FROM projeto p, departamento d WHERE p.cod_dpto = d.codigo GROUP BY d.descricao, d.cod_gerente;

SELECT f.nome, descricao, projeto FROM dep_projetos d LEFT JOIN funcionario f ON f.codigo = d.gerente;