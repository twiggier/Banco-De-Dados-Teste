INSERT INTO cidades (id_cidade, uf_cidade, nome_cidade) VALUES
    (1, 'SP', 'São Paulo');
INSERT INTO cidades (id_cidade, uf_cidade, nome_cidade) VALUES
    (2, 'RJ', 'Rio de Janeiro'); 
INSERT INTO cidades (id_cidade, uf_cidade, nome_cidade) VALUES
    (3, 'MG', 'Minas Gerais');
INSERT INTO clientes (id_cliente, endereço_cliente, nome_cliente, numero_cliente, bairro_cliente) VALUES
    (1, 'Rua Carlos vieira 130', 'Juan', 998765432, 'Vila Unida');
INSERT INTO clientes (id_cliente, endereço_cliente, nome_cliente, numero_cliente, bairro_cliente) VALUES
    (2, 'Rua Esmeralda 185', 'Leandro', 997869433, 'Bandeirantes');
INSERT INTO clientes (id_cliente, endereço_cliente, nome_cliente, numero_cliente, bairro_cliente) VALUES
    (3, 'Rua Costa Dias 271', 'Emerson', 993621580, 'Manteigas');
INSERT INTO estados (id_estado, nome_estado, sigla_estado) VALUES
    (1, 'Distrito Federal', 'DF');
INSERT INTO estados (id_estado, nome_estado, sigla_estado) VALUES
    (2, 'Bahia', 'BA');
INSERT INTO estados (id_estado, nome_estado, sigla_estado) VALUES
    (3, 'Alagoas', 'AL');
    
ALTER TABLE CIDADES ADD PRIMARY KEY (id_cidade);
ALTER TABLE CLIENTES ADD PRIMARY KEY (id_cliente);
ALTER TABLE ESTADOS ADD PRIMARY KEY (id_estado);

ALTER TABLE CIDADES ADD cod_estado INT;
ALTER TABLE CLIENTES ADD cod_cidade INT;

ALTER TABLE CIDADES ADD FOREIGN KEY (COD_ESTADO) REFERENCES ESTADOS (ID_ESTADO);
ALTER TABLE CLIENTES ADD FOREIGN KEY (COD_CIDADE) REFERENCES CIDADES (ID_CIDADE);

CREATE TABLE CONTATOS (
id_contato INT PRIMARY KEY,
cod_cliente INT,
telefone_contato NUMBER(11,1),
nome_contato VARCHAR2(30),
email_contato VARCHAR2(50),
FOREIGN KEY (COD_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE)
);

