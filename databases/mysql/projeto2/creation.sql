CREATE DATABASE db_bookstore;

USE db_bookstore;

CREATE TABLE tb_books( 
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	nm_author VARCHAR(100) NOT NULL,
	sx_author CHAR(1),
	page_numbers INT NOT NULL,
	publish_company VARCHAR(100) NOT NULL,
	price FLOAT NOT NULL,
	state CHAR(2) NOT NULL,
	publish_year INT NOT NULL 
);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('Real Knight', 'Ana Claudia', 'F', 465, 'Atlas', 49.90, 'RJ', 2009);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('SQL to dummbies', 'João Nunes', 'M', 450, 'Addison', 98.0, 'SP', 2018);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('Homemade recipes', 'Ceila Tavares', 'F', 210, 'Atlas', 45.0, 'RJ', 2018);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('Best People', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('Best Habits', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('The brown house', 'Hermes macedo', 'M', 250, 'Bubba', 60, 'MG', 2016);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('Dear Estacio', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('Ferever Friends', 'Leda Silva', 'F', 510, 'Insigina', 78.98, 'ES', 2011);

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('unforgettable cops', 'Marco Alcantra', 'M', 200, 'Larson', 130.98, 'RS', '2018');

UPDATE tb_books SET publish_year = 2018 WHERE id = 9;

INSERT INTO tb_books (name, nm_author, sx_author, page_numbers, publish_company, price, state, publish_year)
VALUES ('The power of mind', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SO', 2018);

SELECT
	id,
	name,
	sx_author,
	publish_year
FROM
	tb_books;
