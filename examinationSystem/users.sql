CREATE LOGIN Instructor   
    WITH PASSWORD = '1234';  
USE sqlproject;  
CREATE USER Instructor FOR LOGIN Instructor   
    WITH DEFAULT_SCHEMA = dbo;  
GO
CREATE LOGIN Manager   
    WITH PASSWORD = '1234';  
USE sqlproject;  
CREATE USER Manager FOR LOGIN Manager   
    WITH DEFAULT_SCHEMA = dbo;  
GO
CREATE LOGIN Students   
    WITH PASSWORD = '1234';  
USE sqlproject;  
CREATE USER Students FOR LOGIN Student   
    WITH DEFAULT_SCHEMA = dbo;  
GO



