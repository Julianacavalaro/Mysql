#Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa. 
#Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.

#Popule esta tabela com até 5 dados;
#Faça um select que retorne os funcionários com o salário maior do que 2000.
#Faça um select que retorne os funcionários com o salário menor do que 2000.
#Ao término atualize um dado desta tabela através de uma query de atualização.

#salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

drop table funcionarios;
CREATE DATABASE rh;
drop table funcionarios;
USE rh;

CREATE TABLE funcionarios(
ID_funcionarios integer PRIMARY KEY AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(5,2),
salario decimal(7,2)
);

insert into funcionarios ( nome, nascimento, sexo, peso, altura, salario) values
	('Gabriela', '1991-02-03','F', '58.5', 1.60, '800.66'),
	('João', '1988-02-04','M', '68.5', 1.80, '4000.90'),
	('Marcio', '1950-02-04','M', '69.5', 1.70, '900.35');
    
insert into funcionarios (nome, nascimento, sexo, peso, altura, salario) values
	('Julia', '1990-02-03','F', '58.5', 1.60, 3000.99),
	('Maricota','1960-02-04','M', '68.5', 1.80, 4500.95);

describe funcionarios;
select * from funcionarios;

select * from funcionarios where salario> 2000;
select *from funcionarios where salario< 2000;

alter table funcionarios modify column nome varchar(20);