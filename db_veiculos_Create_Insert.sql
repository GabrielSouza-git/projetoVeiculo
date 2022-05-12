# Foi utilizado o AWS RDS para a criação do meu banco de dados em nuvem, mas caso queira criar um banco de dados local, basta utilizar o comando abaixo:

# 1 Criando o Banco de Dados local

#CREATE DATABASE NomeDoBancoDeDados;
#USE NomeDoBancoDeDados;

# 2 Criando as tabelas dentro do Banco de Dados

# 2.1 Criando a tabela cliente
CREATE TABLE cliente ( 
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
sexo VARCHAR(10),
cpf VARCHAR(11) NOT NULL,
nascimento DATE NOT NULL,
numero_cnh VARCHAR(11) NOT NULL,
endereco VARCHAR (50) NOT NULL
); 

# 2.2 Criando tabela fabricante
CREATE TABLE fabricante (
id_fabricante INT AUTO_INCREMENT PRIMARY KEY,
nome_fabricante VARCHAR(30)
);

#2.3 Criando tabela modelo
CREATE TABLE modelo (
id_modelo INT AUTO_INCREMENT PRIMARY KEY,
id_fabricante INT,
nome_modelo VARCHAR(30),
FOREIGN KEY (id_fabricante) REFERENCES fabricante(id_fabricante)
);

#2.4 Criando tabela veículo
CREATE TABLE veiculo (
id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
id_fabricante INT NOT NULL,
id_modelo INT NOT NULL,
numero_placa VARCHAR(7) NOT NULL,
chassi VARCHAR(17) NOT NULL,
FOREIGN KEY (id_fabricante) REFERENCES fabricante(id_fabricante),
FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo)
);

# 2.5 Criando tabela reserva
CREATE TABLE reserva (
id_reserva INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT NOT NULL,
id_veiculo INT NOT NULL, 
data_retirada DATETIME NOT NULL,
data_prev_devolucao DATETIME NOT NULL,
data_devolucao DATETIME,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

# 3 Inserindo dados nas tabelas

# 3.1 Inserindo valores na tabela cliente
INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Diamantino Eudes Caneira', 'Masculino', '84982385017',  20000501, '68453331272', 'Travessa Quatro');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Daniel Bon Campos', 'Masculino', '78122646530', 19980206, '78418394506', 'Rua 15 de Novembro');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Júlio Biango Queiroz', 'Masculino', '58518209420', 19950612, '32465382407', 'Rua Vereador José Horácio e Góis');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Gilberto Anjos Junior', 'Masculino', '56486175001', 19861220, '45305146952' , 'Travessa Paulo Augusto');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Manuella Paes Dores', 'Feminino', '30478062095', 19980527, '12397444172', 'Rua Talhares');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Conceição Nespoli Donato', 'Feminino', '59649026002', 19951128, '71898899891', 'Rua Aline Santos França');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Cristiana Darmont da Paixão', 'Masculino', '88838195005', 19960621, '27002079908', 'Rua Moises Pedro Miguel');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Davi Limeira Araujo', 'Masculino', '52185835025', 19950817, '26409297122', 'Rua Barão de Coque');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Gabriel Barbosa Prata', 'Masculino', '00409405000', 19900826,'63201504156', 'Rua Quatro Balas');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Priscila Amaral', 'Feminino', '38942257003', 19980727, '82030837733', 'Rua Ritinha Prado');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Kauã da Souza dos Passos', 'Masculino', '50977724077', 19980101, '50013092427', 'Rua Vitória');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Kamilly Albergaria Prata', 'Feminino', '42868616003', 20010105, '50165235962', 'Rua Felipe Vellasques Vargas');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Giuliano Silva Machado', 'Masculino', '02072368790', 19840628, '00327715658', 'Rua 2 de Outubro');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Juliana Gonçalves Uchôa', 'Feminino', '85351884283', 19920203, '52234498189', 'Travessa Fernando Moura');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Myrian Jales Barboza', 'Feminino', '06514388299', 19741121, '12417127305', 'Rua 7 de Setembro');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Deyse Coutinho Camara', 'Feminino', '42175281671', 19700506, '73415840147', 'Rua Lagoinha');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Jhonne Antonio Garcia', 'Masculino', '33819876901', 20030810, '67670489215', 'Avenida Ipiranga');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Grecy Campelo Figueredo', 'Feminino', '19613288015', 19891203, '65663633610', 'Avenida Lisboa');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Cassio Costa Vilar', 'Masculino', '82374457400', 19991110, '86317083700', 'Rua Dois Irmãos');

INSERT INTO cliente (nome, sexo, cpf, nascimento, numero_cnh, endereco) 
VALUES ('Antônio Chiles Guedes', 'Masculino', '74763955306', 20000316, '81843319549', 'Avenida Pinheiro');

# 3.2 Inserindo valores na tabela fabricante
INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (1, "FIAT");

INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (2, "CHEVROLET");

INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (3, "VOLKSWAGEN");

INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (4, "FORD");

INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (5, "AUDI");

INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (6, "MERCEDES");

INSERT INTO fabricante (id_fabricante, nome_fabricante)
VALUES (7, "JEEP");

# 3.3 Inserindo valores na tabela modelo
INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (1, 1, "PULSE");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (2, 1, "ARGO");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (3, 2, "ONIX");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (4, 2, "CRUZE");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (5, 3, "POLO");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (6, 3, "JETTA");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (7, 4, "BRONCO SPORT");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (8, 4, "TERRITORY");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (9, 5, "A4");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (10, 5, "Q5");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (11, 6, "GLB SUV");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (12, 6, "GLA SUV");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (13, 7, "WRANGLER");

INSERT INTO modelo (id_modelo, id_fabricante, nome_modelo)
VALUES (14, 7, "RENEGADE");

# 3.4 Inserindo valores na tabela veiculo
INSERT INTO veiculo (id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 6, 11, "KGM9136", "37p9m49wm0a4g8561");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 1, 1, "ARK1898", "67ANdac2316mj0309");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 3, 5, "IAA3129", "5NexgL96lG3BZ5481");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 3, 4, "IBL1975", "8m57TvDRbK6948956");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 1, 2, "NEP0271", "6AzpP46GmAY6k0579");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES (6, 11, "HTO2750", "6YdRcJ35P3TWU5392");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 5, 9, "KKD3182", "27wBxPx4aAAB37400");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 2, 3, "MHW9599", "5xhtcArsyDF3A9550");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 2, 3, "MNZ9917", "7A5wgZ50zgCjv1524");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 4, 7, "NEX0343", "4MA1WEF6XpE9A4312");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 4, 7, "KAH0964", "5ASy5uKT67kMV3932");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 6, 12, "HXX3585", "7TlG09ssLFatH0259");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 3, 5, "JTT0709", "6jlbYEAtADJaz1468");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 7, 14, "NER9135", "6TzCAh5pyEu2H6147");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 7, 14, "NEN2578", "6H7AwCAJAAN0N5033");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 7, 13, "HSJ5808", "4zAcEpnAPCg1g4928");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 1, 1, "IIA7066", "4AKdxxU8K6AJC3258");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 3, 6, "NFB6430", "14gtD6K83uD424723");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 3, 6, "MMZ7493", "4H9880CAm9zPZ1327");

INSERT INTO veiculo ( id_fabricante, id_modelo, numero_placa, chassi) 
VALUES ( 5, 9, "MMZ7493", "4H9880CAm9zPZ1327");

# 3.4 Inserindo valores na tabela reserva
INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (5,1, 20220420, 20220425, 20220425);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (1,8, 20220420,20220427, 20220426);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (11,9, 20220330, 20220410, 20220410);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (9,5, 20220430, 20220510, null);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (8,2, 20220325, 20220402, 20220401);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (6,12, 20220501, 20220502, null);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (10,6, 20220415, 20220420, 20220421);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (16,4, 20220420, 20220425, 20220424);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (19,20, 20220429, 20220503, null);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (20,14, 20220430, 20220503, 20220503);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (14,18, 20220328, 20220401, 20220401);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (3,11, 20220401, 20220412, 20220413);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (18,19, 20220501, 20220510, null);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (13,17, 20220430, 20220506, 20220503);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (15,3, 20220426, 20220501, 20220501);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (2,13, 20220330, 20220406, 20220405);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (12,16, 20220501, 20220504, 20220503);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (4,10, 20220428, 20220510, null);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (7,7, 20220410, 20220420, 20220420);

INSERT INTO reserva (id_cliente, id_veiculo, data_retirada, data_prev_devolucao, data_devolucao)
VALUES (17,15, 20220421, 20220501, 20220502);

												












