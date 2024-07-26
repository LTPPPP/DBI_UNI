select st.Id as'StudentID', st.[Name] as'StudentName', m.Mark,st.Department
from Students st
join Enroll e on st.Id = e.StudentId
join Marks m on m.EnrollId=e.EnrollId
where m.Mark=10
order by st.Id