USE projeto01;

/*
 * APENAS NO MYSQL -> PONTEIRO PARA UM SELECT */
SHOW tables;

/*
 * PROJEÇÃO */
SELECT
	NOW() AS data_hora;

/*
 * Seleção, projeção e junção */
/*
 * NÃO UTILIZAR - PERFORMANCE RUIM*/
SELECT
	*
FROM
	tb_clientes;

SELECT
	nome,
	sexo,
	email
FROM
	tb_clientes;

SELECT
	nome,
	sexo,
	email,
	endereco,
	NOW() AS hora
FROM
	tb_clientes;

/*
 * ALIAS */
SELECT
	nome as Cliente,
	sexo as Genero,
	email
FROM
	tb_clientes;

/*
 * FILTROS -> linhas (quantidade de registros) */
SELECT
	nome,
	email
FROM
	tb_clientes
WHERE
	sexo = 'M';

SELECT
	nome,
	email
FROM
	tb_clientes
WHERE
	sexo IS NULL;

SELECT
	nome,
	email
FROM
	tb_clientes
WHERE
	sexo = 'F';

/*
 * CARACTER CORINGA - % */

SELECT
	nome,
	email
FROM
	tb_clientes
WHERE
	endereco LIKE '%dante%';



SELECT
	nome,
	email
FROM
	tb_clientes
WHERE
	endereco LIKE 'Rua%';



/* SELECTIONS  */

select count(*) as 'Registros' from tb_clients;

select sex, count(*) as 'Registros' from tb_clients group by sex;

select sex, address from tb_clients
where sex = 'F' and
address like '%ha%';

select name, sex, email from tb_clients
where phone is null;
