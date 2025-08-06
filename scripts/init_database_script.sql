/* 
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
  * Limits the database so only one user at a time can connect to it. This is useful for maintenance tasks.
    Forces all other connections to the database to disconnect immediately, and rolls back their open transactions.
*/ 

USE master;
GO 

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = "DataWarehouse") 
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
	DROP DATABASE DataWarehouse; 
END 
GO 

CREATE DATABASE DataWarehouse; 
GO 

USE DataWarehouse; 
GO 

CREATE SCHEMA bronze; 
GO 
CREATE SCHEMA silver; 
GO 
CREATE SCHEMA gold; 
GO 
