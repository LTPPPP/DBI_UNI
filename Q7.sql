select a.Id as'AssessmentID', a.[Type], a.CourseId, round(AVG(m.Mark),0) as'Avg_Mark'
from Assessments a
left join Marks m on a.Id= m.AssessmentId
group by a.Id, a.[Type],a.CourseId
having 
AVG(m.Mark)<4
order by AVG(m.Mark) 
