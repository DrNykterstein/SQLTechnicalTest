-- MySQL Script generated by MySQL Workbench
-- Wed Feb 26 22:02:23 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema prueba
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema prueba
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `prueba` ;

-- -----------------------------------------------------
-- Table `prueba`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`clientes` (
  `id_clientes` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NOT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_clientes`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1001
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `prueba`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`pedido` (
  `id_pedido` INT NOT NULL,
  `id_clientes` INT NOT NULL,
  `fecha_pedido` DATE NULL DEFAULT NULL,
  `total` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `id_clientes_idx` (`id_clientes` ASC) VISIBLE,
  CONSTRAINT `id_clientes`
    FOREIGN KEY (`id_clientes`)
    REFERENCES `prueba`.`clientes` (`id_clientes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '													';


-- -----------------------------------------------------
-- Table `prueba`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`productos` (
  `id_productos` INT NOT NULL,
  `nombre_producto` VARCHAR(45) NOT NULL,
  `precio` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`id_productos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '		';


-- -----------------------------------------------------
-- Table `prueba`.`detalle_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prueba`.`detalle_pedido` (
  `id_detalle` INT NOT NULL,
  `id_pedido` INT NOT NULL,
  `id_producto` INT NOT NULL,
  `cantidad` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  INDEX `id_pedido_idx` (`id_pedido` ASC) VISIBLE,
  INDEX `id_producto_idx` (`id_producto` ASC) VISIBLE,
  CONSTRAINT `id_pedido`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `prueba`.`pedido` (`id_pedido`),
  CONSTRAINT `id_producto`
    FOREIGN KEY (`id_producto`)
    REFERENCES `prueba`.`productos` (`id_productos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
