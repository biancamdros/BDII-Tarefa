## QUESTÃO 4

SELECT nome, salario, cod_dep FROM funcionario
WHERE codigo NOT IN(SELECT cod_gerente FROM departamento);