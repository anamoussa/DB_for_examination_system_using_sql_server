
create proc instructor_add_Exam_to_student (@studentID int ,@examID int,@startTime datetime,@endTime datetime )
as
begin
declare @exam_course_id int
 set @exam_course_id=(select E.course_id from Exam E where E.exam_id=@examID) 
 declare @tsudent_course_id int
 set @tsudent_course_id=(select S.course_id from Student S where S.student_id=@studentID) 

 if(@exam_course_id=@tsudent_course_id)
    begin
      update Student set exam_id=@examID
      where student_id=@studentID

	  update Exam set startTime=@startTime , endTime =@endTime
	  where exam_id=@examID;
	end
  else 
	begin
	print 'Sorry !!!that student cant perform that exam '
	end 
end


-----------------add &delete quetion pool

create proc add__questionChoice_by_instructor(@question_des text,@option1 nvarchar(50),@option2 nvarchar(50),@option3 nvarchar(50),@option4 nvarchar(50),@answer nvarchar(50),@course_id int,@instructor_id int)
as
begin
if(@instructor_id=@course_id)
begin
insert into QuestionstChoice (question_des,option1,option2,option3,option4,answer,course_id)
select  
@question_des,@option1,@option2,@option3,@option4,@answer,@course_id
 end
end

----------------------
create proc edit__questionChoice_by_instructor(@question_id int,@question_des text,@option1 nvarchar(50),@option2 nvarchar(50),@option3 nvarchar(50),@option4 nvarchar(50),@answer nvarchar(50),@instructor_id int)
as
begin

update QuestionstChoice 


set question_des=@question_des,option1=@option1 ,option2=@option2,option3=@option3,option4=@option4,answer=@answer
from QuestionstChoice Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 
  

 
end

------------------------------
create proc delete__questionChoice_by_instructor(@question_id int,@instructor_id int)
as
begin

delete  Q 
from QuestionstChoice Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 

end

--------------------------------------
create proc add__questionText_by_instructor(@question_des text,@answer nvarchar(50),@course_id int,@instructor_id int)
as
begin
if(@instructor_id=@course_id)
begin
insert into QuestionstText(question_des,answer,course_id)
select  
@question_des,@answer,@course_id
end

 
end

-------------
create proc edit__questionText_by_instructor(@question_id int,@question_des text,@answer nvarchar(50),@instructor_id int)
as
begin
update QuestionstText 
set question_des=@question_des,answer=@answer
from QuestionstText Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 
end

-------------------
create proc delete__questionText_by_instructor(@question_id int,@instructor_id  INT)
as
begin
delete  QuestionstText
from QuestionstText Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
end

---------------------------------
----qtf
create proc add__questionTF_by_instructor(@question_des text,@option1 bit,@option2 bit,@answer nvarchar(50),@course_id int,@instructor_id int)
as
begin
if(@instructor_id=@course_id)
begin
insert into QuestionstTF(question_des,option1,option2,answer,course_id)
select  
@question_des,@option1,@option2,@answer,@course_id
 end
end

----------------------
CREATE proc edit__questionTF_by_instructor(@question_id int,@question_des text,@option1 bit,@option2 bit,@answer nvarchar(50),@instructor_id int)
as
begin
update QuestionstTF
set question_des=@question_des,answer=@answer,option1=@option1,option2=@option2
from QuestionstTF Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
 
end

----------------------------
CREATE proc delete__questionTF_by_instructor(@question_id int,@instructor_id  INT)
as
begin
delete  QuestionstTF
from QuestionstTF Q inner join Course C on  Q.course_id=C.course_id inner join Instructor on
C.instructor_id=@instructor_id where Q.question_id=@question_id
end



