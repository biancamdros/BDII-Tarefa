## QUESTÃO 2
 
SELECT * FROM funcionario;

SELECT nome FROM funcionario WHERE dat_nasc >(SELECT MIN(dat-nasc) FROM funcionario);