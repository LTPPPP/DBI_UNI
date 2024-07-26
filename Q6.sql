select a.Id as'AssessmentID', a.[Type], a.CourseId,m.Mark
from Assessments a 
left join Marks m on a.Id=m.AssessmentId
where m.Mark = 10
order by a.Id
