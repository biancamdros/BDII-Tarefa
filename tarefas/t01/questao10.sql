## QUESTÃO 10

SELECT p.nome, d.descricao, f.nome FROM projeto p, departamento d, funcionario f
WHERE p.cod_depto = d.codigo AND p.cod_responsavel = f.codigo AND F.COD_depto = d.codigo;