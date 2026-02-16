/*
=============================================================
Creating database and schemas.
=============================================================
Script purpose:
    This script creates a new database named 'datawarehouse' After checking if it alredy exist.
    If the database exists, It is droped and recreated. Additionally, The scripts set up 3 schemas
    within the database: 'bronze','silver' and 'gold'.
Warning:
    If you run this scripts the 'datawarehouse' database will deleted permanantly if it exists.
    Ensure you have proper backup before run this scipts.
*/

--Creating Dtatbase if exists dropping existed and creating new

IF EXISTS(select 1 from sys.databases where name='datawarehouse')
BEGIN
  ALTER DATABASE datawarehouse
  SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE datwarehouse;
END;
G0

create database datawarehouse;

--creating new database 'datawarehouse'

use datawarehouse;

--creating schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
