--Stored procedure
--(1) create__exam_by_instructor -->instructor create exam automatically 

--(2) instructor_create_exam_manual -->With parameters(instructor_id,allowanceOption_id,course_id,
  --                                     tfdeg ,cdeg ,@tdeg )
--(3) instructor_add_Exam_to_student -->With parameters( studentID  ,examID ,startTime ,endTime )

--(3) add__questionChoice_by_instructor-->With parameters(question_des,option1,option2,option3,@option4,answer,course_id ,instructor_id )

--(4) edit__questionChoice_by_instructor-->With parameters(question_id,question_des,option1,option2,option3,option4,answer,instructor_id )

--(5) delete__questionChoice_by_instructor-->With parameters(question_id ,instructor_id )

--(6) add__questionText_by_instructor-->With parameters(question_des ,answer ,course_id ,instructor_id )

--(7) edit__questionText_by_instructor -->With parameters(question_id ,question_des,answer,instructor_id )

--(8) delete__questionText_by_instructor -->With parameters(question_id ,instructor_id)

--(9) add__questionTF_by_instructor -->With parameters(question_des ,option1 bit,option2 bit,answer,course_id,instructor_id)

--(10) edit__questionTF_by_instructor -->With parameters(question_id ,question_des ,option1 ,option2,answer,instructor_id)

--(11) delete__questionTF_by_instructor -->With parameters(question_id ,instructor_id  )

--(12) mannager_add_student (fn ,ln ,addr, phone ,branch_id ,intake_id ,track_id ,courseID )

--(13) show_exam_to_student-->With parameters(student_id  ,course_id )

--(14) Anser_chosse-->With parameters(Student_id , ques_id , ans )

--(15) Anser_True_false -->With parameters(student_id,ques_id, ans)

--(16) Anser_Tet -->With parameters(student_id,ques_id , ans )

------------------------------------
-- Triggers
--(1) Store_exams_year_trigger -->on Exam after insert (insert into ExamsLip(instructor_name,course_name,YEAR(GETDATE()))

--(2) Count_stduent_result -->   on AnswerC after  update (update StudentAnswer set resultC=(select SUM(C.degree)from AnswerC C where C.studentAnswer_id=@answer_id)


--(3) Count_stduent_result_2 -->  on AnswerTF after  update (update StudentAnswer set resultTF=(select SUM(C.degree) from AnswerTF C where C.studentAnswer_id=@answer_id)

--(4) Count_stduent_result_2 -->  on AnswerTF after  update (update StudentAnswer set resultTF=(select SUM(C.degree) from AnswerTF C where C.studentAnswer_id=@answer_id)

--(5) Count_stduent_result_3--> on AnswerText after  update ,insert(update StudentAnswer set resultText=(select SUM(C.degree) from AnswerText C where C.studentAnswer_id=@answer_id)

--(6) Count_final_result -->on StudentAnswerafter update ,insert (update StudentAnswer set result=resultC+resultTF+resultText)





