select * from tb_diretor;

insert into tb_diretor 
values 
(1, 'Christofer nolan'),
(2, 'James cameron'),
(3, 'Quentin Tarantino')

select * from tb_produtora;

insert into tb_produtora
values
(1, 'Marverl Studios'),
(2, 'DC Studios'),
(3, 'Sony Pictures')

select * from tb_filme;

insert into tb_filme
values
(1, 'The Batman', 1, 2, 'Ação'),
(2, 'Spider Man', 2, 1, 'Aventura'),
(3, 'Quarteto Fantastico', 3, 3, 'Ação, Drama')

select * from tb_diretor
	inner join tb_filme on id_diretor = id_filme_diretor