-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema relacional_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema relacional_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `relacional_db` DEFAULT CHARACTER SET utf8 ;
USE `relacional_db` ;

-- -----------------------------------------------------
-- Table `relacional_db`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacional_db`.`Pessoa` (
  `id_Pessoa` INT NOT NULL,
  `nome_pessoa` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Pessoa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relacional_db`.`carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacional_db`.`carro` (
  `idcarro` INT NOT NULL,
  `marca` VARCHAR(45) NULL,
  `ano` VARCHAR(45) NULL,
  `Pessoa_id_Pessoa` INT NOT NULL,
  PRIMARY KEY (`idcarro`, `Pessoa_id_Pessoa`),
  CONSTRAINT `fk_carro_Pessoa`
    FOREIGN KEY (`Pessoa_id_Pessoa`)
    REFERENCES `relacional_db`.`Pessoa` (`id_Pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
