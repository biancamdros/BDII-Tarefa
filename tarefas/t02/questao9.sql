## 09. Cadastre um cartão de milhagem para um cliente qualquer e logo após crie um gatilho que cadastre um cartão de milhagem para aquele cliente quando suas informações forem atualizadas. Veja e explique o que acontece quando esse procedimento for realizado.

INSERT INTO milhas (codigo, quantidade) VALUES (1,  1);

CREATE trigger add_cartao AFTER
UPDATE ON cliente
for each ROW 
INSERT INTO milhas (codigo, quantidade) VALUES (old.codigo, 0) ;

UPDATE cliente
SET endereco = "caico"
WHERE cliente.codigo = 1;