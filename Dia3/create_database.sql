create database db_cidade_das_carnes;
use db_cidade_das_carnes;

drop table tb_produto;
drop table tb_categoria;


#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
create table tb_categoria (
id_categoria integer primary key ,
tipo VARCHAR(20),
fornecedor VARCHAR(20),
linha VARCHAR(20)
);

#determine 5    atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto (
id_produto integer primary key ,
nome VARCHAR(40),
quantidade_estoque int,
descricao VARCHAR(100),
vencimento date,
preco_kg decimal (7,2),
id_categoria integer,
CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);
#Popule esta tabela Categoria com até 5 dados.
/*id_categoria integer primary key ,
id_categoria integer primary key ,
categoria VARCHAR(20),
fornecedor VARCHAR(20),
linha VARCHAR(20)*/
insert into tb_categoria values
	(1, "Bovino",  "Friboi", "BOV"),
    (2, "Suinos", "Pigporcos", "SUI"),
	(3, "Peixaria", "Salomao", "PEIX"),
    (4, "Vegano", "Natureba", "VEG"),
    (5, "Bovino",  "Frigoi" , "BOV");
    

#Popule esta tabela Produto com até 8 dados.
insert into tb_produto values
	(1, "File de Meluza", "200", "Pescados na Antártica", "2021-05-11", "14.85", 3),
    (2, "File de Tilapia", "100", "Pescados no Rio Solimões", "2021-06-11","19.50", 3),
	(3, "Contra Filé","88", "Contra da FRIBOI", "2021-05-11", "69.50", 5),
	(4, "Picanha", "45", "Linha Premium da Swift", "2021-01-11", "99.98", 1),
	(5, "Linguiça suina", "90", "Linha Premium da Swift", "2021-02-11", "9.90", 2),
	(6, "Costela", "160" , "Linha Outback", "2021-07-11", "19.90", 2),
	(7, "File de frango ", "120", "Feito com produtos naturais", "2021-05-11", "24.90", 4),
	(8, "Hamburguer", "190", "Feito com produtos naturais", "2021-05-11","89.90", 5);

select * from tb_categoria;
select * from tb_produto;


