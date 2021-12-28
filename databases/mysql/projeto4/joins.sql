/*
 * 
 * JOINs
 * 
 */

USE db_ecommerce;

SELECT * FROM tb_client;

SELECT * from tb_address;

SELECT * FROM tb_phone;

/*
 * 
 * INNER JOIN
 * 
 * TWO TABLES
 * 
 * */

SELECT name, sex, neighborhood, city
FROM tb_client as cli 
	INNER JOIN tb_address as adr
	ON cli.id_client = adr.id_client
WHERE sex = 'F';

SELECT name, sex, type, number
FROM tb_client as cli
	INNER JOIN tb_phone as tel
	ON cli.id_client = tel.id_client;


/*
 * 
 * INNER JOIN
 * 
 * 3 TABLES
 * 
 * */

SELECT name, sex, neighborhood, city, type, number
FROM tb_client as cli
INNER JOIN tb_address as adr
	ON cli.id_client = adr.id_client
INNER JOIN tb_phone as tel
	ON cli.id_client = tel.id_client;






