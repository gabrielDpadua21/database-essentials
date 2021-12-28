USE projeto01;

INSERT INTO tb_clientes 
VALUES('frajola', 111111111, 'frajola21@gmail.com', '1533445566', 'Rua eu acho eu vi um gatinho', 'M');

INSERT INTO tb_clientes(nome, cpf, email, telefone, endereco)
VALUES('Thor', 222222222, 'deusthor@gmail.com', '1500000000', 'Asgard');

INSERT INTO tb_clientes 
VALUES('lucyfer', 666, 'diabao@gmail.com', '1500000666', 'Inferno de dante', 'M');

SELECT * FROM tb_clientes;