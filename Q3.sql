select st.Id, st.[Name], st.Gender,st.Country,st.Department
from Students st
where st.Id <=8  and st.Department='SE'