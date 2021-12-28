USE db_colaborators;

/*
 * EXERCICIES
 * 
 * 1 - GET ALL COLABORATORS that works on departament of movies or clothes
 * 
 * 2 - GET LIST OF COLABORATORS THAT WORKS IN DEPARTAMENT OF MOVIES OR HOME
 * 
 * 3 - GET COLABORATORS OF MALE SEX OR THAT WORK IN GARDEN DEPARTAMENT
 * 
 */
 
 SELECT COUNT(*), departament
 FROM tb_colaborators
 GROUP BY departament
 ORDER BY 1;

 SELECT count(*), sex 
 FROM tb_colaborators
 GROUP BY sex;
 

SELECT name, email, departament
FROM tb_colaborators
WHERE departament = 'Roupas' OR departament = 'Filmes';


/*
 * 
 * TESTING THE PERFORMANCE OF QUERY
 * 
 * */

SELECT name, email, sex, departament
FROM tb_colaborators
WHERE sex = 'Feminino' AND (departament = 'Lar' OR departament = 'Roupas');

SELECT name, email, sex, departament
FROM tb_colaborators
WHERE (departament = 'Lar' AND sex = 'Feminino') OR (departament = 'Roupas' AND sex = 'Feminino');


SELECT COUNT(*) 
FROM tb_colaborators
WHERE sex = 'Feminino' AND (departament = 'Lar' OR departament = 'Roupas');

SELECT COUNT(*) 
FROM tb_colaborators
WHERE (departament = 'Lar' AND sex = 'Feminino') OR (departament = 'Roupas' AND sex = 'Feminino');


SELECT name, email, departament
FROM tb_colaborators
WHERE sex = 'Masculino' OR departament = 'Jardim';


