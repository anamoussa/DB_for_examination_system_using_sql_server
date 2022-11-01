



exec  mannager_add_instractors 'Ahmed','Hassan','Ahmeda@gmail.com' ,'cairo','0121245484',1
select*from Instructor

exec mannager_add_student 'Mohamd','Ali','Cairo','01152610777',1,1,1,1
exec mannager_add_student 'khaled','naser','Alex','01152610777',1,1,1,1
exec mannager_add_student 'naser','Adwar','minya','01152610777',1,1,1,2
exec mannager_add_student 'youssef','Ahmed','october','01152610557',1,1,1,2
select * from student


select * from Exam
insert into AllowanceOption(allowanceOption_id,allowanceOption_name,option1,option2)
values(1,'first one ',1,0)
exec instructor_add_Exam_to_student 1,1,'20220917 09:00:00 AM','20220917 11:00:00 PM'
exec instructor_add_Exam_to_student 2,2,'20220917 09:00:00 AM','20220917 11:00:00 PM'



-- student answer Exam
exec show_exam_to_student 1,1
exec show_exam_to_student 2,2
select * from StudentAnswer



exec Anser_chosse 1,1,'Bytecode is executed by the JVM'
exec Anser_chosse 1,2,'Use of pointers'

exec Anser_chosse 2,1,'If-then-else statement'
exec Anser_chosse 2,2,''
select * from AnswerC
exec Anser_True_false 1,1,1
exec Anser_True_false 1,2,0
exec Anser_True_false 2,1,1
exec Anser_True_false 2,2,1
select * from  StudentAnswer
exec Anser_Tet 1,1,'yes i can'
exec Anser_Tet 1,2,'yes dsdsd gfgfg i can'
exec Anser_Tet 2,1,'isNan function returns true if the argument is not a number; otherwise, it is false.'
exec Anser_Tet 2,2,'JavaScript is faster. JavaScript is a client-side language,, and thus it does not need the assistance of the webserver to execute. On the other hand, ASP is a server-side language and hence is always slower than JavaScript. Javascript now is also a server-side language (nodejs)'

exec Anser_Tet2 1,1,'yes i can'
exec Anser_Tet2 1,2,'yes dsdsd gfgfg i can'
exec Anser_Tet2 2,1,'isNan  returns true  argument  number otherwise, it is false.'
exec Anser_Tet2 2,2,'JavaScript is faster'

select * from ExamQuestionsText


select * from AnswerText


select * from  StudentAnswer
select * from AnswerC
select * from AnswerTF
select * from AnswerText
select * from  StudentAnswer


SET ansi_warnings OFF


select * from ExamQuestionsChoice
select * from ExamQuestionsChoice

select * from QuestionstChoice
select * from QuestionstTF
select * from QuestionstText












--------add delet update quetions

EXECUTE add__questionChoice_by_instructor 'D','V','C','L','C','eop',3,3
----------------------


exec  edit__questionChoice_by_instructor 'OT','hu','OkH' ,'ddG','www','ddd',1,1

SELECT *FROM QuestionstChoice
------------------------------

exec  delete__questionChoice_by_instructor 2,1,1

SELECT *FROM QuestionstChoice

EXECUTE add__questionChoice_by_instructor 'Duu','V','C','L','C','eop',2,2
select *from QuestionstChoice
exec  edit__questionChoice_by_instructor 1075,'OTi','hu','OkH' ,'ddG','www','ddd',3

SELECT *FROM QuestionstChoice
exec  delete__questionChoice_by_instructor 1077,1

SELECT *FROM QuestionstChoice
EXECUTE add__questionText_by_instructor 'hudio','kk',3,3
select* from QuestionstText
exec  edit__questionText_by_instructor 1023,'u','Ok',3

SELECT *FROM QuestionstText
exec  delete__questionText_by_instructor 1022,3

SELECT *FROM QuestionstText

EXECUTE add__questionTF_by_instructor 'D',1,0,1,3,1
select *from QuestionstTF
exec  edit__questionTF_by_instructor 1,'uI',1,0,1,1

SELECT *FROM QuestionstTF
exec  delete__questionTF_by_instructor 2,3

SELECT *FROM QuestionstTF
--------------------------------------------------------------------------------------




