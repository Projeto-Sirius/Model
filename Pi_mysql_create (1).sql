CREATE TABLE `tb_produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`preco` DECIMAL NOT NULL,
	`quantidade` DECIMAL NOT NULL,
	`disponivel` bigint NOT NULL,
	`id_usuario` DECIMAL NOT NULL,
	`id_categoria` DECIMAL NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`nomeCompleto` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL AUTO_INCREMENT,
	`zona_preferencial` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk0` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario`(`id`);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categoria`(`id`);




