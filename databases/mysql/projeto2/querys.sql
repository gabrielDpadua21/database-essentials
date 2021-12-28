USE db_bookstore;

/*
 * QUERYS TO RUN
 * 
 * 1 - GET ALL DATA
 * 
 * 2 - GET BOOK NAME AND PUBLISHER NAME
 * 
 * 3 - GET NAME AND STATE OF BOOK PUBLISH OF AUTHOR WITH MALE SEX
 * 
 * 4 - GET NAME AND NUMBER OF PAGES OF BOOKS OF AUTHORS WITH FEMALE SEX
 * 
 * 5 - GET PRICE OF BOOK WITH STATE SP
 * 
 * 6 - GET DATA FROM AUTHOR WITH MALE SEX, WHO HAD TO PUBLISH BOOK IN THE STATE OF SP OR RJ
 */

  SELECT * FROM tb_books;
 
  SELECT name, publish_company 
  FROM tb_books;
 
  SELECT name, state 
  FROM tb_books 
  WHERE sx_author = 'M';
 
  SELECT name, page_numbers 
  FROM tb_books 
  WHERE sx_author = 'F';
 
  SELECT price 
  FROM tb_books 
  WHERE state = 'SP';
 
  SELECT name, nm_author 
  FROM tb_books 
  WHERE sx_author = 'M' AND (state = 'SP' OR state = 'RJ');
 
 /*
  * LOGIC OPERATORS
  * 
  * AND
  * OR
  * */
 
 SELECT name, sx_author
 FROM tb_books
 WHERE sx_author = 'M' OR name LIKE '%Best%';

 SELECT name, nm_author, publish_year
 FROM tb_books
 WHERE sx_author = 'M' AND nm_author LIKE '%Edu%';
 
 
 
 
 
 