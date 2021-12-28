/*
 * 
 * VIEWS
 * 
 */

USE db_ecommerce;

/*
 * SHOW VIEWS
 * */

SHOW TABLES;

CREATE VIEW vw_report AS 
SELECT cli.name, 
	   IFNULL(cli.email, 'NO EMAIL') AS 'EMAIL', 
	   IFNULL(tel.number, '**********') AS 'PHONE', 
	   adr.state
FROM tb_client AS cli
INNER JOIN tb_address AS adr
	ON adr.id_client = cli.id_client
LEFT JOIN tb_phone AS tel
	ON tel.id_client = cli.id_client;

/*
 * QUERY VIEW
 * 
 * */
SELECT name, email, phone FROM vw_report;

/*
 * DELETE VIEW
 * */
DROP VIEW report;


/*
 * 
 * INSERT VIEWS - DML
 * 
 * */

CREATE TABLE tb_players (
    id_player INT PRIMARY KEY AUTO_INCREMENT,
	nick VARCHAR(100) NOT NULL,
	game VARCHAR(100) NOT NULL
);


INSERT INTO tb_players VALUES(NULL, 'Kirito', 'SAO');
INSERT INTO tb_players VALUES(NULL, 'Fallen', 'CSGO');
INSERT INTO tb_players VALUES(NULL, 'Faker', 'LOL');

SELECT id_player, nick, game FROM tb_players;

CREATE VIEW vw_players AS
SELECT nick, game FROM tb_players;

DELETE FROM vw_players 
WHERE nick = 'Fallen';

INSERT INTO vw_players VALUES('Fallen', 'CSGO');

SELECT * FROM vw_players;





