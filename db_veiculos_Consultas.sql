# CRIANDO CONSULTAS

#1 Saber o nome, numero da placa, nome fabricante e nome modelo dos carros alugados pelos clientes
select cliente.nome, veiculo.numero_placa, fabricante.nome_fabricante, modelo.nome_modelo from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante;

#2 Saber a quantidade reservada de cada modelo e fabricante de carro
select  fabricante.nome_fabricante, modelo.nome_modelo, count(*) as quantidade_modelo_alugado from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante
group by modelo.nome_modelo;
 
#3 Saber a quantidade reservada de cada fabricante de carro
select  fabricante.nome_fabricante, count(*) as quantidade from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante
group by fabricante.nome_fabricante;

#4 Mostrar o nome do cliente, fabricante, modelo e número do chassi
SELECT cliente.nome, fabricante.nome_fabricante, modelo.nome_modelo, veiculo.chassi  from cliente
INNER JOIN reserva on reserva.id_cliente = cliente.id_cliente
INNER JOIN veiculo on veiculo.id_veiculo = reserva.id_veiculo
INNER JOIN modelo on modelo.id_modelo = veiculo.id_modelo
INNER JOIN fabricante on fabricante.id_fabricante = modelo.id_fabricante;

#5 Mostrar o nome do cliente, nome do fabricante, número da placa do veículo do cliente que possui o modelo Pulse
SELECT cliente.nome, fabricante.nome_fabricante, modelo.nome_modelo, veiculo.chassi  from cliente
INNER JOIN reserva on reserva.id_cliente = cliente.id_cliente
INNER JOIN veiculo on veiculo.id_veiculo = reserva.id_veiculo
INNER JOIN modelo on modelo.id_modelo = veiculo.id_modelo
INNER JOIN fabricante on fabricante.id_fabricante = modelo.id_fabricante
WHERE modelo.nome_modelo = 'PULSE';
 
#6 Mostrar todas as reservas de acordo com o cpf do cliente
SELECT cliente.nome AS nome_cliente, cliente.cpf, veiculo.numero_placa, fabricante.nome_fabricante, modelo.nome_modelo, reserva.data_retirada, reserva.data_prev_devolucao, reserva.data_devolucao FROM cliente
INNER JOIN reserva ON reserva.id_cliente = cliente.id_cliente
INNER JOIN veiculo ON veiculo.id_veiculo = reserva.id_veiculo
INNER JOIN modelo ON modelo.id_modelo = veiculo.id_modelo
INNER JOIN fabricante ON fabricante.id_fabricante = modelo.id_fabricante
WHERE cpf LIKE "%";

#7 Mostrar o nome, fabricante e modelo do carro alugado por um cliente especifico
SELECT cliente.nome, fabricante.nome_fabricante, modelo.nome_modelo from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante
where nome like "M%";

#8 Mostrar todas as reservas que já tiveram os veículos retirados pelos respectivos clientes em um intervalo de datas
SELECT cliente.nome AS nome_cliente, cliente.cpf, veiculo.numero_placa, fabricante.nome_fabricante, modelo.nome_modelo, reserva.data_retirada, reserva.data_prev_devolucao, reserva.data_devolucao FROM cliente
INNER JOIN reserva ON reserva.id_cliente = cliente.id_cliente
INNER JOIN veiculo ON veiculo.id_veiculo = reserva.id_veiculo
INNER JOIN modelo ON modelo.id_modelo = veiculo.id_modelo
INNER JOIN fabricante ON fabricante.id_fabricante = modelo.id_fabricante
WHERE data_retirada BETWEEN "2022-03-18" AND "2022-03-30";

#9 Atualizar a data de retirada de uma reserva e a data prevista de devolução
UPDATE 	reserva SET data_retirada = "" # colocar dentro das aspas a nova data
WHERE id_reserva = ""; # colocar dentro das aspas qual número de id da reserva que quer alterar
UPDATE reserva SET data_prev_devolucao = "" #colocar dentro das aspas a nova data
WHERE id_reserva = ""; # colocar dentro das aspas qual número de id da reserva que quer alterar

#10 Mostrar o nome dos clientes, nome do fabricante e modelo que ainda não devolveram o carro
SELECT cliente.nome,  fabricante.nome_fabricante, modelo.nome_modelo, reserva.data_devolucao, reserva.data_prev_devolucao from cliente
INNER JOIN reserva ON reserva.id_cliente = cliente.id_cliente
INNER JOIN veiculo ON veiculo.id_veiculo = reserva.id_veiculo
INNER JOIN modelo ON modelo.id_modelo = veiculo.id_modelo
INNER JOIN fabricante ON fabricante.id_fabricante = modelo.id_fabricante
WHERE data_devolucao is null;

#11 Mostrar todas as placas que que estão com a data de devolução da reserva vencida ESSA AQUI TA ERRADA
SELECT cliente.nome, reserva.id_reserva, fabricante.nome_fabricante, modelo.nome_modelo, veiculo.numero_placa, reserva.data_prev_devolucao from cliente
INNER JOIN reserva ON reserva.id_cliente = cliente.id_cliente
INNER JOIN veiculo ON veiculo.id_veiculo = reserva.id_veiculo
INNER JOIN modelo ON modelo.id_modelo = veiculo.id_modelo
INNER JOIN fabricante ON fabricante.id_fabricante = modelo.id_fabricante
WHERE data_prev_devolucao < "2022-05-03";



