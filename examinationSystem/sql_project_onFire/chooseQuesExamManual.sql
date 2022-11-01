 create table Eqc
 (
qid int
,ints_id int
,course_id int 

constraint Eqc_pk primary key (qid,ints_id,course_id)
)
 create table Eqc1
 (
qid int 
,ints_id int
,course_id int 
constraint Eqc1_pk primary key (qid,ints_id,course_id)

)
 create table Eqc2
 (
qid int
,ints_id int
,course_id int 
constraint Eqc2_pk primary key (qid,ints_id,course_id)
)

create proc instructor_create_exam_manual 
(@instructor_id int ,@allowanceOption_id int,@course_id int,
  @tfdeg int,@cdeg int,@tdeg int)
 as 
 begin
 declare @exam_id int,@examdeg int,@coursemaxdeg int;

 set @examdeg=(select count(E.qid)from Eqc E where E.course_id=@course_id and E.ints_id=@instructor_id) 
 * @tfdeg +(select count(E.qid)from Eqc1 E where E.course_id=@course_id and E.ints_id=@instructor_id)*
 @cdeg +(select count(E.qid)from Eqc2 E where E.course_id=@course_id and E.ints_id=@instructor_id) * @tdeg 
 
 set @coursemaxdeg=(select max_deg from Course where course_id=@course_id)

 if(@examdeg <= @coursemaxdeg)
 begin

 insert into Exam(instructor_id,course_id,branch_id,intake_id,track_id,allowanceOption_id)
 values(@instructor_id,@course_id,1,1,1,@allowanceOption_id)
 set @exam_id=(select top 1 E.exam_id from Exam E order by exam_id desc);

  --insert choose questions
  --make question from 1 to n 
       DECLARE @id INT 
    insert into ExamQuestionsChoice(id,question_id ,question_des,option1,option2,option3,option4,degree,answerChoice ,exam_id)
	select 0,Q.question_id, Q.question_des ,Q.option1,Q.option2,
	Q.option3,Q.option4,@cdeg,Q.answer,@exam_id from QuestionstChoice Q
	where  Q.question_id in(select E.qid from Eqc E where E.ints_id=@instructor_id and E.course_id=@course_id  )
  
    SET @id = 0 
    UPDATE ExamQuestionsChoice 
    SET @id = id = @id + 1 where exam_id=@exam_id
 
 
 --insert choose true or false questions
        SET @id = 0 
		 insert into ExamQuestionsTF(id,question_id ,question_des,optionT,optionF,degree,answerTF ,exam_id)
		select ++@id ,Q.question_id, Q.question_des ,Q.option1,Q.option2,
		@tfdeg,Q.answer,@exam_id from QuestionstTF Q
			where  Q.question_id in(select E.qid from Eqc1 E where E.ints_id=@instructor_id and E.course_id=@course_id  )
		  SET @id = 0 
       UPDATE ExamQuestionsTF 
       SET @id = id = @id + 1 where exam_id=@exam_id
		 --insert text questions 
		 insert into ExamQuestionsText(id,question_id,question_des,degree,answerText ,exam_id)
		 select ++@id ,Q.question_id,  Q.question_des ,@tdeg,Q.answer,@exam_id from QuestionstText Q
		where  Q.question_id in(select E.qid from Eqc2 E where E.ints_id=@instructor_id and E.course_id=@course_id  )
	
	  SET @id = 0 
       UPDATE ExamQuestionsText 
       SET @id = id = @id + 1 where exam_id=@exam_id

		--delete question that inserted into exam 
	delete from Eqc where ints_id=@instructor_id and course_id=@course_id
	delete from Eqc1 where ints_id=@instructor_id and course_id=@course_id
	delete from Eqc2 where ints_id=@instructor_id and course_id=@course_id
	
	end
	else 
		begin
			print 'the exam degree  more than than course maximum degree'
		end

 end


create proc insert_into_chosse_questions @instructor_id int,@course_id int,@qId int
 as 
 begin
 declare @instrctor_course_id int
 declare @quetion_course_id int
  set @instrctor_course_id=(select C.course_id from Course C join Instructor I
  on C.instructor_id=I.instructor_id and C.course_id=@course_id 
  and I.instructor_id=@instructor_id)


 set @quetion_course_id=(select Q.course_id from QuestionstChoice Q where Q.question_id=@qId)
	
	if(@instrctor_course_id=@quetion_course_id)
		begin
			
		   BEGIN TRY  
              insert into Eqc(ints_id,course_id,qid) values(@instructor_id,@course_id,@qId)           END TRY  
           BEGIN CATCH  
		          print ' some thing went wrong you have insert that quetion berfore'
           END CATCH 
		end
	else
		begin
			print'that quetion dose not belong to your course'
		end
 end

create proc insert_into_Tf_questions @instructor_id int,@course_id int,@qId int
 as 
 begin
 declare @instrctor_course_id int
 declare @quetion_course_id int
  set @instrctor_course_id=(select C.course_id from Course C join Instructor I
  on C.instructor_id=I.instructor_id and C.course_id=@course_id 
  and I.instructor_id=@instructor_id)


 set @quetion_course_id=(select Q.course_id from QuestionstTF Q where Q.question_id=@qId)
	
	if(@instrctor_course_id=@quetion_course_id)
		begin
			
		   BEGIN TRY  
              insert into Eqc1(ints_id,course_id,qid) values(@instructor_id,@course_id,@qId)           END TRY  
           BEGIN CATCH  
		          print ' some thing went wrong or  you have insert that quetion before'
           END CATCH 
		end
	else
		begin
			print'that quetion dose not belong to your course'
		end
 end


create proc insert_into_Text_questions @instructor_id int,@course_id int,@qId int
 as 
 begin
 declare @instrctor_course_id int
 declare @quetion_course_id int
  set @instrctor_course_id=(select C.course_id from Course C join Instructor I
  on C.instructor_id=I.instructor_id and C.course_id=@course_id 
  and I.instructor_id=@instructor_id)

 set @quetion_course_id=(select Q.course_id from QuestionstText Q where Q.question_id=@qId)
	
	if(@instrctor_course_id=@quetion_course_id)
		begin
			
		   BEGIN TRY  
              insert into Eqc2(ints_id,course_id,qid) values(@instructor_id,@course_id,@qId)           END TRY  
           BEGIN CATCH  
		          print ' some thing went wrong you have insert that quetion berfore'
           END CATCH 
		end
	else
		begin
			print'that quetion dose not belong to your course'
		end
 end



-- instructor 1 select exam quetions  on course 1

 exec insert_into_chosse_questions 1,1,1
 exec insert_into_chosse_questions 1,1,2

 exec insert_into_Tf_questions 1,1,1
 exec insert_into_Tf_questions 1,1,2

 exec insert_into_Text_questions 1,1 ,1
 exec insert_into_Text_questions 1,1,2

-- instructor 1 select exam quetions  on course 1
 exec insert_into_chosse_questions 1,2,6
 exec insert_into_chosse_questions 1,2,7

 exec insert_into_Tf_questions 1,2,1002
 exec insert_into_Tf_questions 1,2,1003

 exec insert_into_Text_questions 1,2,1002
 exec insert_into_Text_questions 1,2,1003

 -- instructor 1 craete exam on course 1
exec instructor_create_exam_manual 1,1,1,3,5,10

-- instructor 1 craete exam on course 2
exec instructor_create_exam_manual 1,1,2,8,5,10


 select * from Exam
 select * from Eqc
 select * from Eqc1
 select * from Eqc2

 select *  from ExamQuestionsChoice
 select *  from ExamQuestionsTF
 select *  from ExamQuestionsText


select * from Course
select * from Instructor

delete from Eqc
delete from Eqc1
delete from Eqc2
delete from ExamQuestionsChoice
delete from ExamQuestionsTF
delete from ExamQuestionsText

delete  from Exam
delete  from Student








select * from Exam

