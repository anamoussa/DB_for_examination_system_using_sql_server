
------------manager ------------
 create proc mannager_add_student (@fn varchar(50),@ln varchar(50),@addr varchar(50)
,@phone varchar(50),@branch_id int,@intake_id int,@track_id int,@courseID int)
as
begin
insert into Student(student_fn,student_ln,adress,phone,branch_id,intake_id,track_id,course_id) 
values(@fn,@ln,@addr,@phone,@branch_id,@intake_id,@track_id,@courseID)
end 

------------------------------------------------------------------------------
create proc mannager_add_instractors (@ins_fn nvarchar(50),@ins_ln nvarchar(50),@mail nvarchar(50)  ,@address nvarchar(50),@phone nvarchar(15),@man_ID int)
as
begin
insert into Instructor(instructor_f_n,instructor_l_n,email,adress,phone,manager_ID) 
values(@ins_fn ,@ins_ln ,@mail,@address ,@phone ,@man_ID )
end 



---------------------------------------------------------------------------------------------------------

create proc manager_update_instractor (@ins_fn nvarchar(50),@ins_ln nvarchar(50),@mail nvarchar(50) ,@address nvarchar(50),@phone nvarchar(15),@man_ID int)
as
begin

update Instructor

set instructor_f_n=@ins_fn,instructor_l_n=@ins_ln,email=@mail,adress=@address,phone=@phone,manager_ID=@man_ID
from Instructor where manager_ID=@man_ID 

end


---------------------------------------------------------------------------------------------------------

create proc manager_delete_instractor (@ins_id int,@man_ID int)
as
begin

delete  
from Instructor where instructor_id=@ins_id and manager_ID=@man_ID
end
-------------------------------------------course--------------------------------------------------------------
create proc mannager_add_course (@cor_name nvarchar(50),@mn_deg int  ,@mx_deg int,@ins_id int)
as


begin
insert into Course(course_name,min_deg,max_deg,instructor_id)  

values (@cor_name ,@mn_deg ,@mx_deg ,@ins_id) 
end 
-------------------------------------------------------------------------------------------------------------
go
create proc manager_update_course (@cor_name nvarchar(50),@mn_deg int  ,@mx_deg int,@ins_id int,@man_id int,@cor_id int)
as
begin

update Course
set course_name=@cor_name,min_deg=@mn_deg,max_deg=@mx_deg ,instructor_id=@ins_id
from Course  where course_id=@cor_id
end 

-------------------------------------------------------------------------------------------------
go
alter proc manager_delete_course (@cor_id int)
as
begin

delete  
from Course  where course_id=@cor_id 
end

exec manager_delete_course 8
select*from Course
-----------------------------------------------problem---------------------------------------------------
go
create proc mannager_add_instractors_foreach_course  (@ins_fn nvarchar(50),@ins_ln nvarchar(50),@mail nvarchar(50)  ,@address nvarchar(50),@phone nvarchar(15),@man_ID int,@course_id int,@instr_id int)
as
begin
update Instructor
 
set instructor_f_n=@ins_fn,instructor_l_n=@ins_ln,email=@mail,adress=@address,phone=@phone,manager_ID=@man_ID  from Instructor inner join Course 
on Course.instructor_id=Instructor.instructor_id  
where  course_id=@course_id

end 

exec mannager_add_instractors_foreach_course 'jjjjjj','sssss','@@@','wwwwww','554444',2,1,2
select*from Instructor
select*from course


-------------------------------------------------------------------------------------------------------------
go
create proc manager_delete_instractor_foreach_course (@instr_id int ,@cor_id int)
as
begin

delete  I 
from Instructor I inner join Course C on  I.instructor_id=C.instructor_id inner join Instructor on
C.instructor_id=@instr_id where C.course_id=@cor_id
 
end
exec manager_delete_instractor_foreach_course 1,1

select*from Instructor

-------------------------------------------------------------------------------------------------------------

create proc Training_manage_add_branch(@br_id int,@br_name nvarchar(50))
as 
begin 
insert into Branch(branch_id,branch_name) values (@br_id,@br_name )
end
GO
--------------------------------------------------------------------------------------------------------
create proc Training_manage_add_track(@tr_id int,@tr_name nvarchar(50))
as 
begin 
insert into Track (track_id,track_name) values (@tr_id ,@tr_name )
end
GO
---------------------------------------------------------------------------------------------------
GO

create proc Training_manage_edit_branch(@id int,@br_id int,@br_name nvarchar(50))
as 
begin 
update Branch
set  branch_id=@br_id,branch_name= @br_name  where branch_id=@id


end
GO
-------------------------------------------------------------------------------------------------------

CREATE proc Training_manager_add_intake(@int_num int,@int_id int)
as 
begin 
insert into Intake (intake_number,intake_id) values (@int_num,@int_id )
end
GO
------------------------------------------------------------------------------------------------------

create proc Training_manage_edit_track(@id int,@tr_name nvarchar(50))
as 
begin 
update Track
set track_name= @tr_name  where track_id=@id 


end

-----------------------------------------------------------------------------------------