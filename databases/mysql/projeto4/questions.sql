USE db_ecommerce;

CREATE TABLE tb_products (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(150) NOT NULL, 
	price INT,
	delivery FLOAT NOT NULL
);

ALTER TABLE tb_products
CHANGE price unit_value INT NOT NULL;

/*
 * RELATORIO GERAL DE CLIENTES
 * 
 * RELATORIO GERAL DE HOMENS
 * 
 * RELATORIO GERAL DE MULHERES
 * 
 * QUANTIDADE DE HOMENS E MULHERES
 * 
 * IDS E EMAILS DE MULHERES QUE MOREM NO CENTRO DO RJ E NÃO TENHAM TELEFONE
 * 
 * MULHERES COM TELEFONE CELULAR E MORA NO ESTADO DE SP
 * 
 * MULHERES QUE MORAM NO ESTADO DE SÃO PAULO
 * */

SELECT * FROM tb_client AS cli
INNER JOIN tb_address AS adr
	ON cli.id_client = adr.id_client
LEFT JOIN tb_phone AS tel
	ON 	cli.id_client = tel.id_client;

SELECT * FROM tb_client AS cli
INNER JOIN tb_address AS adr
	ON cli.id_client = adr.id_client
LEFT JOIN tb_phone AS tel
	ON cli.id_client = tel.id_client
WHERE sex = 'M';

SELECT * FROM tb_client AS cli
INNER JOIN tb_address AS adr
	ON cli.id_client = adr.id_client
LEFT JOIN tb_phone AS tel
	ON cli.id_client = tel.id_client
WHERE sex = 'F';

SELECT sex, COUNT(*) AS Total FROM tb_client
GROUP BY sex;

SELECT cli.id_client, cli.email, cli.sex, 
adr.city, adr.neighborhood,
tel.type, tel.number
FROM tb_client AS cli 
INNER JOIN tb_address AS adr
	ON cli.id_client = adr.id_client
INNER JOIN tb_phone AS tel
	ON cli.id_client = tel.id_client
WHERE cli.sex = 'F'
AND adr.city = 'Sorocaba'
AND neighborhood = 'Centro'
AND (tel.type = 'RES' OR tel.type = 'COM');

