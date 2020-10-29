CREATE TABLE `Postagens` (
	`id_postagem` INT NOT NULL AUTO_INCREMENT,
	`titulo_postagem` varchar(255) NOT NULL,
	`descricao_postagem` TEXT(255) NOT NULL,
	`tipo_arquivo` blob(255) NOT NULL,
	`comentarios` TEXT(255) NOT NULL,
	`id_tema` INT(255) NOT NULL,
	`id_usuario` INT(255) NOT NULL,
	PRIMARY KEY (`id_postagem`)
);

CREATE TABLE `Tema` (
	`id_tema` INT NOT NULL AUTO_INCREMENT,
	`materia` varchar(255) NOT NULL,
	`submateria` varchar(255) NOT NULL,
	`serie` INT(255) NOT NULL,
	PRIMARY KEY (`id_tema`)
);

CREATE TABLE `Usuário` (
	`id_usuario` INT NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(255) NOT NULL,
	`email_usuario` varchar(255) NOT NULL,
	`senha_usuario` varchar(255) NOT NULL,
	PRIMARY KEY (`id_usuario`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`id_tema`) REFERENCES `Tema`(`id_tema`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuário`(`id_usuario`);

