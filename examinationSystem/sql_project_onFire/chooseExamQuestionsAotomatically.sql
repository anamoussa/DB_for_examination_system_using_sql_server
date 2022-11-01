create proc create__exam_by_instructor (@instructor_id int ,@course_id int,@allowanceOption_id int,@tfQuestion int,
@tfdeg int,@cQestion int ,@cdeg int,@tQuestion int ,@tdeg int)
 as 
 begin

 declare @exam_id int,@examdeg int,@coursemaxdeg int;


 --num question less than in thw question pool 
 set @examdeg=@tfQuestion * @tfdeg +@cQestion*@cdeg +@tQuestion * @tdeg 

 set @coursemaxdeg=(select max_deg from Course where course_id=@course_id)
 if(@examdeg <= @coursemaxdeg)
 begin

   insert into Exam(instructor_id,course_id,branch_id,intake_id,track_id,allowanceOption_id)
   values(@instructor_id,@course_id,1,1,1,@allowanceOption_id)
   set @exam_id=(select top 1 E.exam_id from Exam E order by exam_id desc);
 
 --insert choose questions

   insert into ExamQuestionsChoice(id,question_id,question_des,option1,option2,option3,option4,degree,answerChoice ,exam_id)
	select  top (@cQestion)0,Q.question_id, Q.question_des ,Q.option1,Q.option2,
	Q.option3,Q.option4,@cdeg,Q.answer,@exam_id from QuestionstChoice Q
	where Q.course_id=@course_id 
	ORDER BY NEWID()
	  DECLARE @id INT 
    SET @id = 0 
    UPDATE ExamQuestionsChoice 
    SET @id = id = @id + 1 where exam_id=@exam_id
 --insert choose true or false questions
     insert into ExamQuestionsTF(id,question_id,question_des,optionT,optionF,degree,answerTF ,exam_id)
	select  top (@tfQuestion)0,Q.question_id, Q.question_des ,Q.option1,Q.option2,
	@tfdeg,Q.answer,@exam_id from QuestionstTF Q
	where Q.course_id=@course_id 
	ORDER BY NEWID()
    SET @id = 0 
    UPDATE ExamQuestionsTF 
    SET @id = id = @id + 1 where exam_id=@exam_id
	 --insert text questions 
     insert into ExamQuestionsText(id,question_id,question_des,degree,answerText ,exam_id)
	 select  top (@tQuestion)0,Q.question_id, Q.question_des ,@tdeg,Q.answer,@exam_id from QuestionstText Q
	where Q.course_id=@course_id 
	ORDER BY NEWID()
	 SET @id = 0 
    UPDATE ExamQuestionsText 
    SET @id = id = @id + 1 where exam_id=@exam_id
	end
	else 
	begin
	print 'the exam degree  more than than course maximum degree'
	end


 end

 --instructor create exam automatically 
 exec create__exam_by_instructor 1,1,1,2,8,2,5,2,10


 select *  from Exam
  select *  from ExamQuestionsChoice
 select *  from ExamQuestionsTF
 select *  from ExamQuestionsText