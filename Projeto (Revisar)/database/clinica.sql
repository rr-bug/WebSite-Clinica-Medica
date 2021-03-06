-- MySQL Script generated by MySQL Workbench
-- 03/03/16 15:12:47
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema clinica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema clinicamedico
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `clinica` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `clinica` ;

-- -----------------------------------------------------
-- Table `clinica`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`medico` (
  `cod_medico` INT NOT NULL AUTO_INCREMENT,
  `nome_medico` VARCHAR(45) NOT NULL,
  `rg_medico` INT NOT NULL,
  `cpf_medico` INT NOT NULL,
  `ddd_medico` INT NOT NULL,
  `telefone_medico` INT NOT NULL,
  `email_medico` VARCHAR(45) NOT NULL,
  `endereco_medico` VARCHAR(45) NOT NULL,
  `cidade_medico` VARCHAR(45) NOT NULL,
  `bairro_medico` VARCHAR(45) NOT NULL,
  `login_medico` VARCHAR(45) NOT NULL,
  `senha_medico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_medico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `clinica`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`paciente` (
  `cod_paciente` INT NOT NULL AUTO_INCREMENT,
  `nome_paciente` VARCHAR(45) NOT NULL,
  `telefone` INT NOT NULL,
  `rg` INT NOT NULL,
  PRIMARY KEY (`cod_paciente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `clinica`.`consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinica`.`consulta` (
  `cod_consulta` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NULL,
  `horario` TIME NULL,
  `prescricao` VARCHAR(60) NULL,
  `medico_cod_medico` INT NOT NULL,
  `paciente_cod_paciente` INT NOT NULL,
  PRIMARY KEY (`cod_consulta`),
  INDEX `fk_consulta_medico_idx` (`medico_cod_medico` ASC),
  INDEX `fk_consulta_paciente1_idx` (`paciente_cod_paciente` ASC),
  CONSTRAINT `fk_consulta_medico`
    FOREIGN KEY (`medico_cod_medico`)
    REFERENCES `clinica`.`medico` (`cod_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_consulta_paciente1`
    FOREIGN KEY (`paciente_cod_paciente`)
    REFERENCES `clinica`.`paciente` (`cod_paciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into paciente (nome_paciente, telefone, rg) values ('opafion', '1232', '3123');
insert into paciente (nome_paciente, telefone, rg) values ('eoq', '123', '3434');