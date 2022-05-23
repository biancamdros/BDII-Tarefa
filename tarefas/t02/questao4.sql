##04. Crie um gatilho que ao se adicionar um novo cliente, seja criado para ele um cartão de milhagem com 0 milhas.


CREATE trigger cartao_milhas
AFTER INSERT ON cliente
for each ROW INSERT INTO milhas(quantidade, cliente)VALUES (0, new.codigo);