# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1_ora_proj JOW.dez                       #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-23 19:40                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `EMPLOYEE` DROP FOREIGN KEY `DEP_EMPLOYEE`;

ALTER TABLE `EMPLOYEE` DROP FOREIGN KEY `PROJWORK_EMPLOYEE`;

ALTER TABLE `EMPLOYEE` DROP FOREIGN KEY `DETAIL_EMPLOYEE`;

ALTER TABLE `PROJWORK` DROP FOREIGN KEY `PROJECT_PROJWORK`;

# ---------------------------------------------------------------------- #
# Drop table "EMPLOYEE"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `EMPLOYEE` DROP PRIMARY KEY;

DROP TABLE `EMPLOYEE`;

# ---------------------------------------------------------------------- #
# Drop table "DETAIL"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `DETAIL` DROP PRIMARY KEY;

DROP TABLE `DETAIL`;

# ---------------------------------------------------------------------- #
# Drop table "PROJWORK"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `PROJWORK` DROP PRIMARY KEY;

DROP TABLE `PROJWORK`;

# ---------------------------------------------------------------------- #
# Drop table "PROJECT"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `PROJECT` DROP PRIMARY KEY;

DROP TABLE `PROJECT`;

# ---------------------------------------------------------------------- #
# Drop table "DEP"                                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `DEP` DROP PRIMARY KEY;

DROP TABLE `DEP`;
