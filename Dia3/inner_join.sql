/* Faça um um select com Inner join entre  tabela categoria e produto.*/

select *from tb_categoria inner join tb_produto where tb_produto.id_categoria = tb_categoria.id_categoria;