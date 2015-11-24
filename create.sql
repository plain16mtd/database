# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1_ora_proj JOW.dez                       #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-23 19:40                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "DEP"                                                        #
# ---------------------------------------------------------------------- #
Create Schema 5605104058db;
User 5605104058db;
CREATE TABLE `DEP` (
    `depno` CHAR(2) NOT NULL,
    `depname` VARCHAR(15),
    `location` VARCHAR(15),
    CONSTRAINT `PK_DEP` PRIMARY KEY (`depno`)
);

# ---------------------------------------------------------------------- #
# Add table "PROJECT"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `PROJECT` (
    `projno` CHAR(2) NOT NULL,
    `prodesc` VARCHAR(20),
    `startdate` DATE,
    `enddate` DATE,
    `budget` NUMERIC(9,2),
    CONSTRAINT `PK_PROJECT` PRIMARY KEY (`projno`)
);

# ---------------------------------------------------------------------- #
# Add table "PROJWORK"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `PROJWORK` (
    `projno` CHAR(2) NOT NULL,
    `empnum` CHAR(4) NOT NULL,
    `hours` NUMERIC(3),
    CONSTRAINT `PK_PROJWORK` PRIMARY KEY (`projno`, `empnum`)
);

# ---------------------------------------------------------------------- #
# Add table "DETAIL"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `DETAIL` (
    `NAME` CHAR(20) NOT NULL,
    `LAST NAME` CHAR(20) NOT NULL,
    CONSTRAINT `PK_DETAIL` PRIMARY KEY (`NAME`, `LAST NAME`)
);

# ---------------------------------------------------------------------- #
# Add table "EMPLOYEE"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `EMPLOYEE` (
    `empnum` CHAR(4) NOT NULL,
    `empname` VARCHAR(15),
    `hiredate` DATE,
    `salary` NUMERIC(8,2),
    `position` VARCHAR(10),
    `depno` CHAR(2) NOT NULL,
    `mgrno` CHAR(4),
    `projno` CHAR(2) NOT NULL,
    `NAME` CHAR(20) NOT NULL,
    `LAST NAME` CHAR(20) NOT NULL,
    CONSTRAINT `PK_EMPLOYEE` PRIMARY KEY (`empnum`, `projno`, `NAME`, `LAST NAME`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `EMPLOYEE` ADD CONSTRAINT `DEP_EMPLOYEE` 
    FOREIGN KEY (`depno`) REFERENCES `DEP` (`depno`);

ALTER TABLE `EMPLOYEE` ADD CONSTRAINT `PROJWORK_EMPLOYEE` 
    FOREIGN KEY (`projno`, `empnum`) REFERENCES `PROJWORK` (`projno`,`empnum`);

ALTER TABLE `EMPLOYEE` ADD CONSTRAINT `DETAIL_EMPLOYEE` 
    FOREIGN KEY (`NAME`, `LAST NAME`) REFERENCES `DETAIL` (`NAME`,`LAST NAME`);

ALTER TABLE `PROJWORK` ADD CONSTRAINT `PROJECT_PROJWORK` 
    FOREIGN KEY (`projno`) REFERENCES `PROJECT` (`projno`);
