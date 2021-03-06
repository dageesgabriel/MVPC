
--- Script de Criação de Índices ---

-- MySQL Script generated by MySQL Workbench
-- dom 11 abr 2021 13:02:52 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

USE `MinasValley`;

-- ----------INDEXS TABLES------------------------------
-- -----------------------------------------------------
-- Table `Cadastro`
-- -----------------------------------------------------

CREATE UNIQUE INDEX `NomeUsuario_UNIQUE` ON `Cadastro` (`NomeUsuario` ASC);


-- -----------------------------------------------------
-- Table `Usuario`
-- -----------------------------------------------------
CREATE UNIQUE INDEX `Id_UNIQUE` ON `Usuario` (`Id` ASC);

CREATE INDEX `FK_Usuario_Cadastro_idx` ON `Usuario` (`IdCadastro` ASC);



-- -----------------------------------------------------
-- Table `Projeto`
-- -----------------------------------------------------
CREATE UNIQUE INDEX `Id_UNIQUE` ON `Projeto` (`Id` ASC);

CREATE INDEX `FK_Projeto_Usuario_idx` ON `Projeto` (`IdUsuario` ASC);


-- -----------------------------------------------------
-- Table `Startup`
-- -----------------------------------------------------
CREATE UNIQUE INDEX `Id_UNIQUE` ON `Startup` (`Id` ASC);

CREATE INDEX `FK_Startup_Usuario_idx` ON `Startup` (`IdUsuario` ASC);


