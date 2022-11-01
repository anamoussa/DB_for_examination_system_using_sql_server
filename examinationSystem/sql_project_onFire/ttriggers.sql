create trigger Store_exams_year_tri on Exam
after insert
as
begin
declare @inst nvarchar(102),@c nvarchar(50)
set @inst=(select CONCAT(I.instructor_f_n,' ',I.instructor_l_n) from Instructor I
where I.instructor_id=
(select I.instructor_id from inserted I) )

set @c=(select C.course_name from Course C
where C.course_id=
(select I.course_id from inserted I) )
insert into ExamsLip(instructor_name,course_name,exams_year)
values(@inst,@c,YEAR(GETDATE()))
end


create trigger count_stduent_result on AnswerC 
after  update 
as
begin 
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)

update StudentAnswer set resultC=(select SUM(C.degree)from AnswerC C where C.studentAnswer_id=@answer_id)
where studentAnswer_id=@answer_id

end


create trigger count_stduent_result_2 on AnswerTF 
after  update 
as
begin 
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)
update StudentAnswer set resultTF=(select SUM(C.degree) from AnswerTF C where C.studentAnswer_id=@answer_id)
where studentAnswer_id=@answer_id
end

create trigger count_stduent_result_3 on AnswerText 
after  update ,insert 
as
begin 
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)
update StudentAnswer set resultText=(select SUM(C.degree) from AnswerText C where C.studentAnswer_id=@answer_id)
where studentAnswer_id=@answer_id
end

create trigger count_final_result on StudentAnswer
after update ,insert 
as
begin
declare @answer_id int 
set @answer_id=(select top 1 I.studentAnswer_id from inserted I)
update StudentAnswer set result=resultC+resultTF+resultText
where studentAnswer_id=@answer_id


update StudentAnswer set exam_degree=(
select sum(E.degree) from ExamQuestionsChoice E where E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=@answer_id))+(
select sum(E.degree) from ExamQuestionsTF E where E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=@answer_id))+(
select sum(E.degree) from ExamQuestionsText E where E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=@answer_id))
 where studentAnswer_id=@answer_id

end