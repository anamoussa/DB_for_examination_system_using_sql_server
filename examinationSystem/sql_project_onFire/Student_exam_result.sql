 ----------------------------------result and answers-------------
 create proc show_exam_to_student @student_id int ,@course_id int 
as --show exams and create answer sheet
begin

declare @varexam_id int 
set @varexam_id =(select exam_id from Student where course_id=@course_id and student_id=@student_id)

declare @examd datetime,@exams datetime;
set @exams=(select startTime from Exam where exam_id=@varexam_id)
set @examd=(select endTime from Exam where exam_id=@varexam_id)

declare @test int 
  set @test=(select studentAnswer_id from StudentAnswer
   where exam_id=@varexam_id and course_id=@course_id and student_id=@student_id)

	if (@test is null)and (@varexam_id is not null)
	begin
			 insert into StudentAnswer(course_id,exam_id,student_id)
				values(@course_id,@varexam_id,@student_id)
				set @test=(select top 1 studentAnswer_id from StudentAnswer order by student_id desc)
				insert into AnswerC(question_id,studentAnswer_id) select E.id,@test from ExamQuestionsChoice E 
				where E.exam_id=@varexam_id;

	            insert into AnswerTF(question_id,studentAnswer_id) select E.id ,@test from ExamQuestionsTF E 
				where E.exam_id=@varexam_id;
	            
				insert into AnswerText(question_id,studentAnswer_id) select E.id,@test from ExamQuestionsText E 
				where E.exam_id=@varexam_id;

				--create answer table
	end
		if( @examd >=SYSDATETIME())and(@exams <=SYSDATETIME())
				begin
		select * from Exam
		where exam_id=@varexam_id 

		select E.id , E.question_des,E.option1 ,
		E.option2,E.option3 ,E.option4 , E.degree from ExamQuestionsChoice E
				where E.exam_id=@varexam_id
		union all 
		select E.id,E.question_des ,CASE
						 WHEN E.optionT=0 THEN 'true'
							ELSE ' ' 
							end as 'True option'
							,CASE
							WHEN E.optionf=1 THEN 'false'
							 ELSE ' ' 
							end as' False Option' ,'','', E.degree  from ExamQuestionsTF E
         		where E.exam_id=@varexam_id
				union all 
		select  E.id,E.question_des,'','','','', E.degree from ExamQuestionsText E
				where E.exam_id=@varexam_id
				end
	else 
		begin
			 print 'wait to your Exam specific time'
	     end 




 end 



create proc Anser_chosse @Student_id int , @ques_id int, @ans nvarchar(50)
as 
begin
--but anser
update AnswerC  set answerChoice=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
--check answer
update  AnswerC  
set 
degree=E.degree
from AnswerC A join ExamQuestionsChoice E
on A.question_id=E.id and
 A.answerChoice=E.AnswerChoice and E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)


 update  AnswerC  
set 
degree=0
from AnswerC A join ExamQuestionsChoice E
on A.question_id=E.id and
 A.answerChoice!=E.AnswerChoice and E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
end


create proc Anser_True_false @student_id int , @ques_id int, @ans bit
as 
begin
--but anser
update AnswerTF set answerTF=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
--check answer
update  AnswerTF  
set 
degree=E.degree
from AnswerTF A join ExamQuestionsTF E
on A.question_id=E.id and
 A.answerTF=E.answerTF and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
 update  AnswerTF  
set 
degree=0
from AnswerTF A join ExamQuestionsTF E
on A.question_id=E.id and
 A.answerTF!=E.answerTF and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
end

create proc Anser_Tet @student_id int, @ques_id int, @ans Text
as 
begin
--but anser
update AnswerText set answerText=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 

--check answer

declare @var nvarchar(100);
set @var=(select cast(A.answerText as nvarchar(100))  from  AnswerText A join 
ExamQuestionsText E
on  A.question_id=E.id and E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id) 
)

update  AnswerText  
set 
degree=E.degree
from AnswerText A join ExamQuestionsText E
on A.question_id=E.id and
 freetext(E.answerText,@var) not null
 and 
 E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id) 

 update  AnswerText  
set 
degree=0
from AnswerText A join ExamQuestionsText E
on A.question_id=E.id and
 A.AnswerText not like E.answerText and  E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id)
end

create proc Anser_Tet2 @student_id int, @ques_id int, @ans Text
as 
begin
declare @var nvarchar(200);
set @var=cast(@ans as nvarchar(200))
--but anser
update AnswerText set answerText=@ans
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 

 begin try 
update AnswerText set degree=
(select E.degree
from AnswerText A join ExamQuestionsText E
on A.question_id=E.id and
 freetext(E.answerText,@var) 
 and 
 E.exam_id=(select exam_id from StudentAnswer
 where studentAnswer_id=A.studentAnswer_id) 
)
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
print'done'

end try
begin catch
update AnswerText set degree=0
where question_id= @ques_id and studentAnswer_id=(select studentAnswer_id
from StudentAnswer where student_id=@student_id) 
print'erorr'
end catch

end



-----------------------------------------------------------------------------------------------

sELECT 
	CASE FULLTEXTSERVICEPROPERTY('IsFullTextInstalled')
		WHEN 1 THEN 'Full-Text installed.' 
		ELSE 'Full-Text is NOT installed.' 
	END

	USE sqlproject
GO

CREATE FULLTEXT CATALOG FullTextCatalog

USE sqlproject
GO
CREATE UNIQUE INDEX index_examTextQuestions ON dbo.ExamQuestionsText(question_id);  

CREATE FULLTEXT INDEX ON dbo.ExamQuestionsText 
(  
    answerText                  
        Language 1033        --1033 is the LCID for English - United States  
)  
KEY INDEX index_examTextQuestions ON FullTextCatalog
WITH CHANGE_TRACKING AUTO          
GO  


select id,answerText from ExamQuestionsText
where  freetext(answerText,'isNan    if the  is not ')

