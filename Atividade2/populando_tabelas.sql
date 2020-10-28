use db_rh2;

select * from tb_cargo;
select * from tb_funcionario;

insert into tb_cargo values
(1,'analista back-end', 'tecnologia da informação'),
(2,'analista front-end', 'tecnologia da informação'),
(3,'psicologo', 'recursos humanos'),
(4,'auxiliar administrativo', 'administração'),
(5,'desenvolvedor full-stack','tecnologia da informação');

insert into tb_funcionario values
(1, 'Juliana' , 'F', 3500.95, 5),
(2, 'Joao' , 'M', 3500.95, 1),
(3, 'Joaquina' , 'F', 3500.95, 5);

insert into tb_funcionario values
(4, 'Maria' , 'F', 2000.95, 4),
(5, 'Joaquina' , 'F', 500.95, 2),
(6, 'Jonathan' , 'M', 1000.95, 1),
(7, 'Jose' , 'M', 1500.95, 3),
(8, 'Julia' , 'F', 2800.95, 1),
(9, 'Maria' , 'F', 3000.95, 5),
(10, 'Marta' , 'F', 3500.95, 4),
(11, 'Aia' , 'F', 900.95, 1),
(12, 'Ana' , 'F', 1400.95, 2),
(13, 'Ana Maria' , 'F', 1900.95, 3),
(14, 'Jaqueline' , 'F', 3500.95, 4),
(15, 'Joana' , 'F', 3900.95, 5);

update tb_funcionario set nome = 'Carlos' where idtb_funcionario='5';
update tb_funcionario set nome = 'Cauê' where idtb_funcionario='6';
update tb_funcionario set sexo = 'M' where idtb_funcionario='5';
	
#inner join
  select *from tb_funcionario inner join tb_cargo on tb_cargo.id_cargo = tb_funcionario.tb_cargo_id_cargo;
  
  #left join
  select *from tb_funcionario left join tb_cargo on tb_cargo.id_cargo = tb_funcionario.tb_cargo_id_cargo;
  
   #right join
  select *from tb_funcionario right join tb_cargo on tb_cargo.id_cargo = tb_funcionario.tb_cargo_id_cargo;

#funcionários que são full stack
select * from tb_funcionario where tb_cargo_id_cargo= '5';

select  tb_funcionario.idtb_funcionario, tb_funcionario.sexo, tb_funcionario.salario from tb_funcionario;