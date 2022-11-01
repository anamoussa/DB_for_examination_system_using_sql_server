
select * from Student
CREATE LOGIN S   
    WITH PASSWORD = '1234';  
USE sqlproject;  
CREATE USER S FOR LOGIN S   
    WITH DEFAULT_SCHEMA = dbo;  
GO
