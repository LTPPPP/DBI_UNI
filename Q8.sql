Create or alter Trigger trgDelayEndSemester 
On  Semesters
For Insert
As
Begin
	UPDATE Semesters 
	SET EndDate = '2019-03-29'
	where Id = 8
End

/*select s.EndDate
from Semesters s
where Id =8*/