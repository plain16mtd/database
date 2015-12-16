# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-12-16 16:26                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Manufacturer"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `Manufacturer` (
    `ManufacturerID` CHAR(10) NOT NULL,
    `ManufacturerName` VARCHAR(40),
    `ManufacturerContact` VARCHAR(40),
    PRIMARY KEY (`ManufacturerID`)
);

# ---------------------------------------------------------------------- #
# Add table "ComputerType"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ComputerType` (
    `ComputerTypeID` CHAR(2) NOT NULL,
    `TypeName` VARCHAR(40),
    `TypeDescription` VARCHAR(100),
    CONSTRAINT `PK_ComputerType` PRIMARY KEY (`ComputerTypeID`)
);

# ---------------------------------------------------------------------- #
# Add table "User"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `User` (
    `UserID` CHAR(40) NOT NULL,
    `UserName` VARCHAR(40),
    `UserEmail` VARCHAR(40),
    `UserCall` CHAR(40),
    CONSTRAINT `PK_User` PRIMARY KEY (`UserID`)
);

# ---------------------------------------------------------------------- #
# Add table "Computer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Computer` (
    `ComputerID` CHAR(3) NOT NULL,
    `ComputerName` VARCHAR(40),
    `OS` VARCHAR(40),
    `ComputerTypeID` CHAR(2),
    `ManufacturerID` CHAR(10),
    CONSTRAINT `PK_Computer` PRIMARY KEY (`ComputerID`)
);

# ---------------------------------------------------------------------- #
# Add table "ComputerUser"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `ComputerUser` (
    `ComputerID` CHAR(3) NOT NULL,
    `UserID` CHAR(10),
    CONSTRAINT `PK_ComputerUser` PRIMARY KEY (`ComputerID`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Computer` ADD CONSTRAINT `ComputerType_Computer` 
    FOREIGN KEY (`ComputerTypeID`) REFERENCES `ComputerType` (`ComputerTypeID`);

ALTER TABLE `Computer` ADD CONSTRAINT `Manufacturer_Computer` 
    FOREIGN KEY (`ManufacturerID`) REFERENCES `Manufacturer` (`ManufacturerID`);

ALTER TABLE `ComputerUser` ADD CONSTRAINT `User_ComputerUser` 
    FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

ALTER TABLE `ComputerUser` ADD CONSTRAINT `Computer_ComputerUser` 
    FOREIGN KEY (`ComputerID`) REFERENCES `Computer` (`ComputerID`);
