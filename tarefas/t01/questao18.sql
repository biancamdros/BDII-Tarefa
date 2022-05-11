## QUESTÃO 18

SELECT f.nome , d.descricao FROM funcionario f, departamento d
WHERE f.salario IN(SELECT MAX(f.salario)
				  FROM funcionario f LEFT JOIN departamento d
				  ON f.cod_dep = d.codigo GROUP BY d.codigo
) AND f.cod_dep = d.codigo
GROUP BY f.salario, f.nome, d.descricao
ORDER BY f.salario;