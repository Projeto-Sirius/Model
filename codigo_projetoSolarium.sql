-- MySQL Script generated by MySQL Workbench
-- Mon Jan 17 10:29:41 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_projeto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_projeto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_projeto` DEFAULT CHARACTER SET utf8 ;
USE `db_projeto` ;

-- -----------------------------------------------------
-- Table `db_projeto`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_projeto`.`tb_categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo_produto` VARCHAR(255) NULL,
  `disponivel` TINYINT NULL,
  `regiao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_projeto`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_projeto`.`tb_produto` (
  `id` INT NOT NULL,
  `preco` DECIMAL(8,2) NULL,
  `quantidade` INT NULL,
  `nome` VARCHAR(255) NULL,
  `descricao` VARCHAR(255) NULL,
  `id_categoria` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_categoria_idx` (`id_categoria` ASC) VISIBLE,
  CONSTRAINT `id_categoria`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `db_projeto`.`tb_categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_projeto`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_projeto`.`tb_usuario` (
  `int` INT NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(15) NOT NULL,
  `nome_completo` VARCHAR(255) NULL,
  PRIMARY KEY (`int`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;