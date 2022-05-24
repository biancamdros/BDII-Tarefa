## 06. Crie um gatilho que some milhas ao cartão de milhagem sempre que um cliente é adicionado a um voo. (considere que é adicionado 1 milha no cartão para cada 10 milhas de distância percorrida em um voo).
 
CREATE trigger add_milhas
AFTER INSERT ON cliente_voo
for each ROW UPDATE milhas
SET quantidade = quantidade + 
(SELECT distancia FROM voo, cliente_voo 
 WHERE new.voo = voo.codigo)/10
 WHERE cliente  = new.cliente;