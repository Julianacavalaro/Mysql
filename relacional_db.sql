use relacional_db;

select * from carro;
select * from pessoa;

insert into pessoa values 
(1, "Julia"),
(2, "Marcio");

insert into carro values(1, "Fiat", "2019", 2);
#selecione todos os dados da tabela carro, juntando a tabela pessoa, onde  os ids, forem iguais
select * from carro
inner join pessoa
where carro.Pessoa_id_pessoa = pessoa.id_pessoa;