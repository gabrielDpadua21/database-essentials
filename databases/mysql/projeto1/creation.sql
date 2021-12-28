CREATE DATABASE projeto01;

USE projeto01;

# MODELAGEM DA TABELA DE CLIENTES
# NOME DA TABELA: tb_cliente
# nome: STRING
# cpf: NUMERIC
# email: STRING
# telefone: STRING
# endereco: STRING
# sexo: STRING

CREATE TABLE tb_clientes(
	nome VARCHAR(30) NOT NULL,
	cpf INT(11) NOT NULL,
	email VARCHAR(30) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	sexo CHAR(1)
);

SELECT * FROM tb_clientes;



