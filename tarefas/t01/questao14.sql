## QUESTÃO 14

CREATE VIEW M_COUNT(func_cod, quantidade_atv) AS SELECT f.codigo, COUNT(a.codigo)
FROM funcionario f, atividade a 
WHERE a.cod_responsavel = f.codigo
GROUP BY f.codigo;

SELECT f.nome, mc.func_cod, mc.quantidade_atv FROM funcionario f, m_count mc;
