## 07. Crie um gatilho que adicione mais um passageiro a um voo sempre que um cliente entre em um voo. (Dica: lembre da relação cliente_voo).

CREATE trigger add_passageiro
AFTER INSERT ON cliente_voo
for each ROW UPDATE voo
SET num_passageiros = num_passageiros + 1
WHERE new.voo = voo.codigo;