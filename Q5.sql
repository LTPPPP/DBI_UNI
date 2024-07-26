select st.Id, st.[Name] as'StudentName', s.Code, st.Department,count(st.Id) as'NumberOfStudents'
from Students st
join Enroll e on st.Id= e.StudentId
join Semesters s on e.SemesterId= s.Id
where s.Code='FA2022' and st.Department='AI'
group by st.Id, st.[Name], s.Code, st.Department
