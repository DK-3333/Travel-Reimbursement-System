-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema travel
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema travel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `travel` DEFAULT CHARACTER SET utf8 ;
USE `travel` ;

-- -----------------------------------------------------
-- Table `travel`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Department` (
  `Department_ID` INT NOT NULL AUTO_INCREMENT,
  `Department_name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Department_ID`),
  UNIQUE INDEX `Department_ID_UNIQUE` (`Department_ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Employee` (
  `Employee_ID` INT NOT NULL AUTO_INCREMENT,
  `FName` VARCHAR(50) NULL,
  `Minit` VARCHAR(10) NULL,
  `LName` VARCHAR(50) NULL,
  `Email` VARCHAR(100) NULL,
  `Workstation_address` VARCHAR(255) NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE INDEX `Employee_ID_UNIQUE` (`Employee_ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Budget Officer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Budget Officer` (
  `BudgetOfficer_ID` INT NOT NULL,
  `Payment_Date` DATETIME NOT NULL,
  `Approval_Auth` INT NOT NULL,
  INDEX `fk_Budget Officer_Employee1_idx` (`BudgetOfficer_ID` ASC) VISIBLE,
  PRIMARY KEY (`BudgetOfficer_ID`),
  CONSTRAINT `fk_Budget Officer_Employee1`
    FOREIGN KEY (`BudgetOfficer_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Supervisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Supervisor` (
  `Supervisor_ID` INT NOT NULL,
  `Approval_Auth` INT NOT NULL,
  PRIMARY KEY (`Supervisor_ID`),
  INDEX `fk_Supervisor_Employee1_idx` (`Supervisor_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Supervisor_Employee1`
    FOREIGN KEY (`Supervisor_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`University Financial Service Officer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`University Financial Service Officer` (
  `UFS_ID` INT NOT NULL,
  `Role` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`UFS_ID`),
  INDEX `fk_University Financial Service Officer_Employee1_idx` (`UFS_ID` ASC) VISIBLE,
  CONSTRAINT `fk_University Financial Service Officer_Employee1`
    FOREIGN KEY (`UFS_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Pre-Travel Approval Report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Pre-Travel Approval Report` (
  `Approval_report_ID` INT NOT NULL AUTO_INCREMENT,
  `Employee_ID` INT NOT NULL,
  `Supervisor_ID` INT NOT NULL,
  `Est. Amount` DECIMAL(8,2) NOT NULL,
  `Category` VARCHAR(100) NOT NULL,
  `Number of Days` INT NOT NULL,
  `Approval Status` INT NOT NULL,
  PRIMARY KEY (`Approval_report_ID`),
  INDEX `fk_Pre-Travel Approval Report_Employee1_idx` (`Employee_ID` ASC) VISIBLE,
  INDEX `fk_Pre-Travel Approval Report_Supervisor1_idx` (`Supervisor_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Pre-Travel Approval Report_Employee1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pre-Travel Approval Report_Supervisor1`
    FOREIGN KEY (`Supervisor_ID`)
    REFERENCES `travel`.`Supervisor` (`Supervisor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Post-Travel Expense Report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Post-Travel Expense Report` (
  `Report_ID` INT NOT NULL AUTO_INCREMENT,
  `Employee_ID` INT NOT NULL,
  `BudgetOfficer_ID` INT NOT NULL,
  `UFS_ID` INT NOT NULL,
  `Amount` DECIMAL(8,2) NOT NULL,
  `ReceiptFile` INT NOT NULL,
  `Vendor_Name` VARCHAR(50) NOT NULL,
  `Start_Date` DATETIME NOT NULL,
  `End_Date` DATETIME NOT NULL,
  `Destination` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(255) NOT NULL,
  `Insurance Coverage` VARCHAR(50) NULL,
  `Hotel_name` VARCHAR(50) NULL,
  `Meal_type` VARCHAR(100) NULL,
  `Transportation_Type` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Report_ID`),
  INDEX `fk_Post-Travel Expense Report_Employee1_idx` (`Employee_ID` ASC) VISIBLE,
  INDEX `fk_Post-Travel Expense Report_Budget Officer1_idx` (`BudgetOfficer_ID` ASC) VISIBLE,
  INDEX `fk_Post-Travel Expense Report_University Financial Service _idx` (`UFS_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Post-Travel Expense Report_Employee1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Post-Travel Expense Report_Budget Officer1`
    FOREIGN KEY (`BudgetOfficer_ID`)
    REFERENCES `travel`.`Budget Officer` (`BudgetOfficer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Post-Travel Expense Report_University Financial Service Of1`
    FOREIGN KEY (`UFS_ID`)
    REFERENCES `travel`.`University Financial Service Officer` (`UFS_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Reimbursement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Reimbursement` (
  `Re_ID` INT NOT NULL AUTO_INCREMENT,
  `BudgetOfficer_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  `Amount` DECIMAL(8,2) NOT NULL,
  `Date` DATETIME NOT NULL,
  PRIMARY KEY (`Re_ID`),
  INDEX `fk_Reimbursement_Budget Officer1_idx` (`BudgetOfficer_ID` ASC) VISIBLE,
  INDEX `fk_Reimbursement_Employee1_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Reimbursement_Budget Officer1`
    FOREIGN KEY (`BudgetOfficer_ID`)
    REFERENCES `travel`.`Budget Officer` (`BudgetOfficer_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Reimbursement_Employee1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `travel`.`Employee_Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel`.`Employee_Department` (
  `Department_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  PRIMARY KEY (`Department_ID`, `Employee_ID`),
  INDEX `fk_Employee_Department_Employee2_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_Department_Department1`
    FOREIGN KEY (`Department_ID`)
    REFERENCES `travel`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Department_Employee2`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `travel`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
