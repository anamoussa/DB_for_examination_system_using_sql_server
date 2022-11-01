------------------file group

ALTER DATABASE [sqlproject] ADD FILEGROUP [Secondary ]
GO
ALTER DATABASE [sqlproject] ADD FILE ( NAME = N'DemoDatabase_tblRecords', FILENAME =
N'E:\DemoDatabase_tblRecords.ndf' , SIZE = 8192KB , FILEGROWTH = 102400KB ) TO FILEGROUP [Secondary]
GO
use [sqlproject]
go

select 
a.Name as 'File group Name', type_desc as 'Filegroup Type', case when is_default=1 then 'Yes' else 'No' end as 'Is filegroup default?',
b.filename as 'File Location',
b.name 'Logical Name',
Convert(numeric(10,3),Convert(numeric(10,3),(size/128))/1024) as 'File Size in MB'
 from sys.filegroups a inner join sys.sysfiles b on a.data_space_id=b.groupid

 ---------index
 USE [sqlproject]
GO
create index ClusteredIndex_Answertf on [AnswerTF](question_id asc)
Create Unique Clustered index [ClusteredIndex_AnswerC1] ON [AnswerC] (question_id asc)  WITH (DROP_EXISTING=ON) ON [Secondary]

Create Unique Clustered index [ClusteredIndex_Answertf] ON [AnswerTF] (question_id asc)  WITH (DROP_EXISTING=ON) ON [Secondary]

------------
 SELECT obj.[name] as [Table Name],
       obj.[type] as [Object Type],
       Indx.[name] as [Index Name],
       fG.[name] as [Filegroup Name]
FROM   sys.indexes INDX
       INNER JOIN sys.filegroups FG
               ON INDX.data_space_id = fG.data_space_id
       INNER JOIN sys.all_objects Obj
               ON INDX.[object_id] = obj.[object_id]
WHERE  INDX.data_space_id = fG.data_space_id
And obj.type='U'       
go
