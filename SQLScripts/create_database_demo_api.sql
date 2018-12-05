CREATE database demoDB
GO

USE demoDB
GO

CREATE schema demo
GO

CREATE LOGIN demouser WITH PASSWORD = 'Password123$';
CREATE USER demouser
FOR LOGIN demouser
WITH DEFAULT_SCHEMA = demo;
GO

EXEC sp_addrolemember 'db_ddladmin', 'demouser';
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA :: demo TO demouser;
GO