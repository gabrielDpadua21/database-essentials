CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_client (
	id_client INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	sex ENUM('M', 'F') NOT NULL,
	cpf VARCHAR(12) UNIQUE NOT NULL
);

CREATE TABLE tb_address (
	id_address INT PRIMARY KEY AUTO_INCREMENT,
	street VARCHAR(100) NOT NULL,
	neighborhood VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state CHAR(2) NOT NULL,
	id_client INT NOT NULL UNIQUE,
	FOREIGN KEY (id_client) REFERENCES tb_client(id_client)
);

CREATE TABLE tb_phone (
	id_phone INT PRIMARY KEY AUTO_INCREMENT,
	type ENUM ('COM', 'RES', 'CEL'),
	number VARCHAR(15) NOT NULL,
	id_client INT NOT NULL,
	FOREIGN KEY (id_client) REFERENCES tb_client(id_client)
);



