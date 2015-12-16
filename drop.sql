# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-12-16 16:26                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Computer` DROP FOREIGN KEY `ComputerType_Computer`;

ALTER TABLE `Computer` DROP FOREIGN KEY `Manufacturer_Computer`;

ALTER TABLE `ComputerUser` DROP FOREIGN KEY `User_ComputerUser`;

ALTER TABLE `ComputerUser` DROP FOREIGN KEY `Computer_ComputerUser`;

# ---------------------------------------------------------------------- #
# Drop table "ComputerUser"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ComputerUser` DROP PRIMARY KEY;

DROP TABLE `ComputerUser`;

# ---------------------------------------------------------------------- #
# Drop table "Computer"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Computer` DROP PRIMARY KEY;

DROP TABLE `Computer`;

# ---------------------------------------------------------------------- #
# Drop table "User"                                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `User` DROP PRIMARY KEY;

DROP TABLE `User`;

# ---------------------------------------------------------------------- #
# Drop table "ComputerType"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `ComputerType` DROP PRIMARY KEY;

DROP TABLE `ComputerType`;

# ---------------------------------------------------------------------- #
# Drop table "Manufacturer"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Manufacturer`;
