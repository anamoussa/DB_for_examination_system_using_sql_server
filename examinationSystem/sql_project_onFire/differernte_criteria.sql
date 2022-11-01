

create view Student_exams_results1
as
select CONCAT( S.student_fn,' ',student_ln )as 'full name',SA.result,SA.exam_degree ,case 
when SA.result >=SA.exam_degree/2 then 'pass'
when SA.result <SA.exam_degree/2 then 'faill'
else 'not found'
end as 'Exams result  fail/pass'
from Student S join StudentAnswer SA 
on S.student_id=SA.student_id

create view Student_results1
as
select CONCAT( S.student_fn,' ',student_ln )as 'full name',C.course_name,SA.result as 'your exam degree',SA.exam_degree,case 
when SA.result >=SA.exam_degree/2 then 'pass'
when SA.result <SA.exam_degree/2 then 'faill'
else 'not found'
end as 'Exams result  fail/pass' ,C.min_deg as 'course mix degree',C.max_deg 'course max degree',
case 
when SA.result >=C.min_deg then 'pass'
when SA.result <C.min_deg then 'faill'
else 'not found'
end as 'course result  fail/pass'
from Student S join StudentAnswer SA 
on S.student_id=SA.student_id
join Course C
on S.course_id=C.course_id

create view Student_course_results
as
select S.student_id, CONCAT( S.student_fn,' ',student_ln )as 'full name',C.course_name,CONCAT(I.instructor_f_n,' ',I.instructor_l_n) as 'instructor name ',SA.result as 'your exam degree',SA.exam_degree,case 
when SA.result >=SA.exam_degree/2 then 'pass'
when SA.result <SA.exam_degree/2 then 'faill'
else 'not found'
end as 'Exams result  fail/pass' ,C.min_deg as 'course mix degree',C.max_deg 'course max degree',
case 
when SA.result >=C.min_deg then 'pass'
when SA.result <C.min_deg then 'faill'
else 'not found'
end as 'course result  fail/pass'
from Student S join StudentAnswer SA 
on S.student_id=SA.student_id
join Course C
on S.course_id=C.course_id
join Instructor I
on C.instructor_id=I.instructor_id

select * from Student_results1
select * from Student_exams_results1
select *  from Student_course_results
create function GetStudent_exam_degree_byID(@id int)
returns nvarchar(max)
begin
		declare @result nvarchar(50)

		set @result=(select [Exams result  fail/pass] from Student_course_results
		where student_id = @id)


		if(@result is null )
		   begin
				return  'no Student Found'
			end
	
			return @result

end
select  dbo.GetStudent_exam_degree_byID(7)
