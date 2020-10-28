/* Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos)*/
select * from tb_categoria where tipo = "Bovino";

/* Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
 select * from tb_produto where preco_kg > "50";
 
 /* Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
 select * from tb_produto where preco_kg > "3" and preco_kg < "60";