Create or ALter procedure prcgetDepartment
(	
	@name varchar(50),
	@nameout varchar(50) output
)

As
Begin
	select d.[Name] as'Department'
	from Students st 
	join Departments d on st.Department=d.Code
	where @name = st.Name
End

/*DECLARE @X varchar(50);
DECLARE @In varchar(100)='Gabriel Spence';
EXECUTE prcgetDepartment @In, @X OUTPUT;
SELECT @X as Department*/