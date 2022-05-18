# projetoVeiculo
Realização de projeto para fixação de conceitos em SQL
### 1 - Tecnologias Utilizadas:
* AWS (Amazon RDS)
* Linguagem de Banco de Dados SQL - MySQL

### 2 - Modelagem de Dados:

![alt text](https://github.com/GabrielSouza-git/projetoVeiculo/blob/main/imagem/modelagem.png)

### 3 - Tutorial para executar banco de dados localmente:
#### 3.1 - Baixar MySql: 

[MySql Workbench](https://www.mysql.com/products/workbench/)

#### 3.2 - Seguir instruções de criação e inserção de dados nas tabelas:
[Criação e inserção](https://github.com/GabrielSouza-git/projetoVeiculo/blob/main/db_veiculos_Create_Insert.sql) 



### 4 - Exemplos de Scripts realizados:
[Todas as consultas](https://github.com/GabrielSouza-git/projetoVeiculo/blob/main/db_veiculos_Consultas.sql) 

#### 4.1 - Consultar o nome, numero da placa, nome do fabricante e nome do modelo dos carros alugados pelos clientes:

```
select cliente.nome, veiculo.numero_placa, fabricante.nome_fabricante, modelo.nome_modelo from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante;
```

#### 4.2 - Consultar a quantidade reservada de cada modelo e fabricante de carro:
```
select  fabricante.nome_fabricante, modelo.nome_modelo, count(*) as quantidade_modelo_alugado from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante
group by modelo.nome_modelo;
```
#### 4.3 - Consultar a quantidade reservada de cada fabricante de carro:
```
select  fabricante.nome_fabricante, count(*) as quantidade from cliente
inner join reserva on reserva.id_cliente = cliente.id_cliente
inner join veiculo on veiculo.id_veiculo = reserva.id_veiculo
inner join modelo on modelo.id_modelo = veiculo.id_modelo
inner join fabricante on fabricante.id_fabricante = modelo.id_fabricante
group by fabricante.nome_fabricante;
```
