## QUESTÃO 6 

SELECT f.nome, f.salario, d.descricao FROM funcionario f, departamento d
WHERE f.cod_dep = d.codigo;