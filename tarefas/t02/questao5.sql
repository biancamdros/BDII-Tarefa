## 05. Crie um gatilho que ao se adicionar um voo, seja adicionado +1 voo para o piloto daquele voo.

CREATE trigger soma_um
AFTER INSERT ON voo
for each ROW UPDATE piloto
SET num_voos = num_voos + 1
WHERE new.piloto = piloto.codigo;