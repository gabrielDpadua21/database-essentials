/*
 * 
 * FUNCTIONS
 * 
 */

USE db_ecommerce;

/*
 * FUNCTION IFNULL
 */

SELECT cli.name, 
	   cli.email, 
	   IFNULL(tel.number, '**********') AS 'PHONE', 
	   adr.state
FROM tb_client AS cli
INNER JOIN tb_address AS adr
	ON adr.id_client = cli.id_client
LEFT JOIN tb_phone AS tel
	ON tel.id_client = cli.id_client;

	
	
	
	