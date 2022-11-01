--insert into insructor table
insert into Instructor(instructor_f_n,instructor_l_n)values('moussa','Sadik')
insert into Instructor(instructor_f_n,instructor_l_n)values('Ahmed','Gamal')
insert into Instructor(instructor_f_n,instructor_l_n)values('Huda','Mahmoud')
select * from Instructor
--insert into course table
insert into Course(course_name,instructor_id,max_deg,min_deg)
values('Java',1,100,50),('C#',2,80,40),('C++',3,60,30)

--insert questions table
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(1,' Which of the following option leads to the portability and security of Java?',
'Bytecode is executed by JVM','The applet makes the Java code secure and portable',
'Dynamic binding between objects','non of them','Bytecode is executed by the JVM')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(1,'Which of the following is not a Java features?','Dynamic',
'Architecture Neutral','Use of pointers','Object-oriented','Use of pointers')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(1,'The \u0021 article referred to as a','Unicode escape sequence',
'Octal escape','Hexadecimal','Line feed','Unicode escape sequence')
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(1,'are you okay?',
0,1,1)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(1,'are you like java',
0,1,0)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(1,'java has oop ?',
0,1,1)
insert into QuestionstText(course_id,question_des,answer)
values(1,' me about your self','im ggod')
,(1,'n you fly','yes i can')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which type of JavaScript language is? ',
'Object-Oriented','Object-Based','Assembly-language','High-level','Object-Based')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which of the following is not javascript data types?',
'Null type',' Undefined type','Number type','All of the mentioned','All of the mentioned')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which one of the following also known as Conditional Expression? ',
'Alternative to if-else','Switch statement','If-then-else statement','immediate if','If-then-else statement')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'When interpreter encounters an empty statements, what it will do? ',
'Shows a warning','Prompts to complete the statement',
'Throws an error','Ignores the statements','Ignores the statements')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'The "function" and " var" are known as? ',
'Keywords','Data types',
'Declaration statements','Prototypes','Declaration statements')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which of the following variables takes precedence over the others if the names are the same? ',
'Global variable','The local element','The two of the above','None of the above','The local element')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which one of the following is the correct way for calling the JavaScript code? ',
'Preprocessor','Triggering Event','RMI','Function/Method','Function/Method')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which of the following type of a variable is volatile? ',
'Mutable variable','Dynamic variable',
'Volatile variable','Immutable variable','Mutable variable')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'Which of the following option is used as hexadecimal literal beginning? ',
'00','0x',
'0X','Both 0x and 0X','Both 0x and 0X')
insert into QuestionstChoice (course_id,question_des,option1,option2,option3,option4,answer)
values(2,'In the JavaScript, which one of the following is not considered as an error? ',
'Syntax error','Missing of semicolons',
'Division by zero','Missing of Bracket','Division by zero')
---------------------------------------------------------------------------------------------------------
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'The ability to combine embedded JavaScript code and JavaScript source files in a single web page is advantageous if you have multiple web pages.',
0,1,1)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'You can use a text string as a literal value or assign it to a variable.',
0,1,1)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'Assignment operators are used to perform mathematical calculations, such as addition, subtraction, multiplication, and division.',
0,1,0)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'In an infinite loop, a loop statement never ends because its conditional expression is never truthy.',
0,1,0)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'Web page authoring refers to the visual design and creation of the documents that appear on the World Wide Web.',
0,1,0)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'The statement document.write("This is a text string."); prints "This is a text string".',
0,1,0)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'Many apps installed on smartphones and tablets are technically web documents that access web servers.',
0,1,1)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'JavaScript can be used to delete persistent cookies in a program.',
0,1,1)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'A function must return a value.',0,1,0)
insert into QuestionstTF(course_id,question_des,option1,option2,answer)
values(2,'To round a number to the next highest integer you will use the round(x) Math class method.',
0,1,0)
-----------------------------------------------------------------------------------------------------------
insert into QuestionstText(course_id,question_des,answer)
values(2,'What is the use of isNaN function? ','isNan function returns true if the argument is not a number; otherwise, it is false.')
insert into QuestionstText(course_id,question_des,answer)
values(2,'Which is faster between JavaScript and an ASP script? ','JavaScript is faster. JavaScript is a client-side language,, and thus it does not need the assistance of the webserver to execute. On the other hand, ASP is a server-side language and hence is always slower than JavaScript. Javascript now is also a server-side language (nodejs).')
insert into QuestionstText(course_id,question_des,answer)
values(2,'What is negative Infinity? ','Negative Infinity is a number in JavaScript which can be derived by dividing negative number by zero.')
insert into QuestionstText(course_id,question_des,answer)
values(2,'Which company developed JavaScript? ','Netscape is the software company that developed JavaScript.')
insert into QuestionstText(course_id,question_des,answer)
values(2,'What are undeclared and undefined variables? ','Undeclared variables are those that do not exist in a program and are not declared. If the program tries to read the value of an undeclared variable, then a runtime error is encountered.

Undefined variables are those that are declared in the program but have not been given any value. If the program tries to read the value of an undefined variable, an undefined value is returned.')
insert into QuestionstText(course_id,question_des,answer)
values(2,'What is a prompt box? ','A prompt box is a box that allows the user to enter input by providing a text box. A label and box will be provided to enter the text or number.')
insert into QuestionstText(course_id,question_des,answer)
values(2,'What is ‘this’ keyword in JavaScript? ','‘This’ keyword refers to the object from where it was called.')
insert into QuestionstText(course_id,question_des,answer)
values(2,' What is the difference between ViewState and SessionState? ','‘ViewState’ is specific to a page in a session.
‘SessionState’ is specific to user-specific data that can be accessed across all web application pages.
')
insert into QuestionstText(course_id,question_des,answer)
values(2,'What do you mean by NULL in Javascript? ','The NULL value is used to represent no value or no object. It implies no object or null string, no valid boolean value, no number, and no array object.')
insert into QuestionstText(course_id,question_des,answer)
values(2,'What is the use of Void (0)? ','Void(0) is used to prevent the page from refreshing, and parameter “zero” is passed while calling.

Void(0) is used to call another method without refreshing the page.')
----------------------------------------------------------------------------------------------------------


--insert into 
insert into Branch values(1,'minya')
insert into Track values(1,'.net')
insert into intake values(1,42)

----------------------------------------------------------------------------