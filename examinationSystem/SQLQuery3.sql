CREATE TABLE sales_details
(
salesperson_id integer NOT NULL,
salesperson character varying(255) NOT NULL,
store_state character varying(255) NOT NULL,
sales_target numeric NOT NULL,
sales_current numeric NOT NULL
);

INSERT INTO sales_details
(salesperson_id
,salesperson
,store_state
,sales_target
,sales_current)
VALUES
(106,'Sahil Singh','KA',12000,7778),
(107,'Rohit Sharma','DL',22000,15600),
(108,'Max Muller','MH',20000,16780),
(109,'Ashley K','WB',13000,11780),
(110,'Mathew Harris','TN',6000,5678),
(101,'Danish K','KA',10000,10000),
(102,'Rashmi Sharma','DL',23000,18000),
(103,'Mohak Patel','MH',21000,21000),
(104,'Devika Ramaswamy','TN',10000,8000),
(105,'Reema Ray','WB',0,10000);



create function GetStudentName_fn(@id int)
returns nvarchar(max)
begin
		declare @name nvarchar(50)
		set @name=(select St_Fname  from newschema.Student
		where St_Id = @id)

			declare @lname nvarchar(50)
		set @lname=(select St_Lname  from newschema.Student
		where St_Id = @id)

		if(@name is null and @lname is null)
		   begin
				return  'First name & last name are null'
			end
	   else if(@name is null )
		   begin
				return  'First name is null'
			end
      else if(@lname is null )
		   begin
				return  'Last name is null'
			end
		else
			begin
			 return 'First name & last name are not null'
			end
			return @name

end
select  dbo.GetStudentName_fn(1)
select * from newschema.Student

