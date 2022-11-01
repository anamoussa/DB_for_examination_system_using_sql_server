--drop database myCsharpProject
--create database myCsharpProject
use myCsharpProject
create table Branch(
branch_id int,
branch_name nvarchar(50)
constraint Branch_pk primary key (branch_id)
)
create table Intake(
intake_id int,
intake_number int,
constraint intake_pk primary key (intake_id)
)
create table Track(
track_id int,
track_name nvarchar(50)
constraint track_pk primary key (track_id)
)

create table Instructor(
instructor_id int identity(1,1),
instructor_f_n nvarchar(50),
instructor_l_n nvarchar(50),
email nvarchar(50),
adress nvarchar(50),
phone nvarchar(15),
manager_ID int ,
constraint Instructor_pk primary key (instructor_id)
)
create table Course(
course_id int identity(1,1),
course_name nvarchar(50),
min_deg int,
max_deg int,
instructor_id  int,
constraint Course_pk primary key (course_id),
constraint Course_instructor_fk foreign  key  (instructor_id) references Instructor(instructor_id)
)
create table QuestionstTF
(
question_id int identity(1,1),
question_des text,
option1 bit,
option2 bit,
answer bit,
course_id  int,
constraint QuestionstTF_pk primary key (question_id),
constraint QuestionstTF_Course_fk foreign  key  (course_id) references Course(course_id)

)
create table QuestionstChoice
(
question_id int identity(1,1),
question_des text,
option1 nvarchar(50),
option2 nvarchar(50),
option3 nvarchar(50),
option4 nvarchar(50),
answer nvarchar(50),
course_id  int,
constraint QuestionstChoice_pk primary key (question_id),
constraint QuestionstChoice_Course_fk foreign  key  (course_id) references 
Course(course_id)
)
create table QuestionstText
(
question_id int identity(1,1),
question_des text,
answer text,
course_id  int,
constraint QuestionstText_pk primary key (question_id),
constraint QuestionstText_Course_fk foreign  key  (course_id) references 
Course(course_id)
)
create table AllowanceOption(
allowanceOption_id int ,
allowanceOption_name nvarchar(50),
option1 bit,
option2 bit,
constraint AllowanceOption_pk primary key(allowanceOption_id) 
)
create table Exam(
exam_id int identity(1,1),
exam_type nvarchar(50),
startTime datetime,
endTime datetime,
totalTime time,
allowance_option nvarchar(50),
course_id int,
instructor_id int,
branch_id int,
intake_id int,
track_id int, 
allowanceOption_id int,
constraint Exam_pk primary key (exam_id),
constraint Exam_Course_fk foreign  key  (course_id) references 
Course(course_id),
constraint Exam_Instructor_fk foreign  key  (instructor_id) references 
Instructor(instructor_id),
constraint Exam_allowanceOption_fk foreign  key  (allowanceOption_id) references 
AllowanceOption(allowanceOption_id),

constraint Exam_branch_fk foreign  key  (branch_id) references 
Branch(branch_id),

constraint Exam_Intake_fk foreign  key  (intake_id) references 
Intake(intake_id),

constraint Exam_Track_fk foreign  key  (track_id) references 
Track(track_id),

)
create table ExamQuestionsChoice(
question_id int,
question_des text,
option1 nvarchar(50),
option2 nvarchar(50),
option3 nvarchar(50),
option4 nvarchar(50),
answerChoice nvarchar(50),
degree int,
exam_id int,
constraint ExamQuestionsChoose_pk primary key (question_id,exam_id),
constraint ExamQuestionsC_Exam_fk foreign  key  (exam_id) references 
Exam(exam_id)
)
create table ExamQuestionsTF(
question_id int,
question_des text,
optionT bit,
optionF bit,
answerTF bit,
degree int,
exam_id int,
constraint ExamQuestionsTF_pkT primary key (question_id,exam_id),
constraint ExamQuestionsTF_Exam_fk foreign  key  (exam_id) references 
Exam(exam_id),

)
 create table ExamQuestionsText(
question_id int,
question_des text,
answerText text,
degree int,
exam_id int,
constraint ExamQuestionsT_pk primary key (question_id,exam_id),
constraint ExamQuestionsT_Exam_fk foreign  key  (exam_id) references 
Exam(exam_id),

)
create table Student(
student_id int identity(1,1),
student_fn nvarchar(50),
student_ln nvarchar(50),
adress nvarchar(50),
phone nvarchar(15),
branch_id int,
intake_id int,
track_id int, 
exam_id int,
course_id int,
constraint Student_pk primary key (student_id),
constraint Student_Exam_fk foreign  key  (exam_id) references 
Exam(exam_id),
constraint Student_Course_fk foreign  key  (course_id) references 
Course(course_id),

constraint Student_branch_fk foreign  key  (branch_id) references 
Branch(branch_id),

constraint Student_Intake_fk foreign  key  (intake_id) references 
Intake(intake_id),

constraint Student_Track_fk foreign  key  (track_id) references 
Track(track_id),

)
create table ExamsLip
(
exam_id int identity(1,1) ,
course_name varchar(50),
instructor_name varchar(102),
exams_year varchar(50)
)
create table StudentAnswer(
studentAnswer_id int identity(1,1),
student_id int ,
exam_id int ,
course_id int ,
result int ,
resultC int,
resultTF int ,
resultText int,
exam_degree int ,
constraint StudentAnswer_pk primary key (studentAnswer_id),
constraint StudentAnswer_student_fk foreign key (student_id) references Student(student_id),
constraint StudentAnswer_course_fk foreign key (exam_id) references Exam(exam_id),
constraint StudentAnswer_exam_fk foreign key (course_id) references Course(course_id),
)
create table AnswerC(
ansquestion_id int ,
answerChoice nvarchar(50),
degree int,
studentAnswer_id int,
constraint AnswerC_stuAns_fk foreign key(studentAnswer_id) 
references StudentAnswer(studentAnswer_id),

--constraint AnswerC_Question_fk foreign key(question_id) references ExamQuestionsChoice(question_id,exam_id)
)
create table AnswerTF(
ansquestion_id int ,
answerTF bit,
degree int,
studentAnswer_id int,
constraint AnswerTF_stuAns_fk foreign key(studentAnswer_id) 
references StudentAnswer(studentAnswer_id)
,

--constraint AnswerTF_Question_fk foreign key(question_id) 
--references ExamQuestionsTF(question_id)
)
create table AnswerText(
ansquestion_id int ,
answerText text,
degree int,
studentAnswer_id int,
constraint AnswerT_stuAns_fk foreign key(studentAnswer_id) 
references StudentAnswer(studentAnswer_id),
--constraint AnswerText_Question_fk foreign key(question_id) 
--references ExamQuestionsText(question_id)
)







