-- -----------------------------------------------------
-- Schema decodemtl_addressbook
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `decodemtl_addressbook` ;

-- -----------------------------------------------------
-- Schema decodemtl_addressbook
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `decodemtl_addressbook` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `decodemtl_addressbook` ;

-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`Account` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`Account` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `email` VARCHAR(255) NOT NULL COMMENT '',
  `password` VARCHAR(40) NOT NULL COMMENT '',
  `createdOn` DATETIME NOT NULL COMMENT '',
  `modifiedOn` DATETIME NULL COMMENT '',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`AddressBook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`AddressBook` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`AddressBook` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `accountId` INT NOT NULL COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `createdOn` DATETIME NOT NULL COMMENT '',
  `modifiedOn` DATETIME NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `decodemtl_addressbook`.`Entry`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `decodemtl_addressbook`.`Entry` ;

CREATE TABLE IF NOT EXISTS `decodemtl_addressbook`.`Entry` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `addressBookId` INT NOT NULL COMMENT '',
  `firstName` VARCHAR(255) NOT NULL COMMENT '',
  `lastName` VARCHAR(255) NULL COMMENT '',
  `birthday` DATETIME NULL COMMENT '',
  `type` ENUM('home', 'work', 'other') NOT NULL COMMENT '',
  `subtype` ENUM('phone', 'address', 'email') NOT NULL COMMENT '',
  `contentLineOne` VARCHAR(255) NOT NULL COMMENT '',
  `contentLineTwo` VARCHAR(255) NULL COMMENT '',
  `contentLineThree` VARCHAR(255) NULL COMMENT '',
  `contentLineFour` VARCHAR(255) NULL COMMENT '',
  `contentLineFive` VARCHAR(255) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;