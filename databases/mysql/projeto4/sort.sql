USE db_ecommerce;

CREATE TABLE tb_students (
	id_std INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
);

INSERT INTO tb_students VALUES(NULL, 'Frajola', 'frajola21@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Thor', 'thor1@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'lucifer', 'lu@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Deam', 'empala67@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam', 'sammy@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam1', 'sammy1@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam2', 'sammy2@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam3', 'sammy3@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam4', 'sammy4@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam5', 'sammy5@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam6', 'sammy6@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam7', 'sammy7@gmail.com');

INSERT INTO tb_students VALUES(NULL, 'Sam8', 'sammy8@gmail.com');

SELECT name, email FROM tb_students;

/*
 * 
 * SORTING
 * 
 * ORDER BY
 * 
 * */

SELECT name, email
FROM tb_students
ORDER BY name;

SELECT name, email
FROM tb_students
ORDER BY email, name;

/*
 * 
 * ORDER BY - DESCENDENT
 * 
 * */

SELECT name, email
FROM tb_students
ORDER BY name DESC;




