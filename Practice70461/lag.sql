
-- http://msdn.microsoft.com/en-us/library/hh231256.aspx

select *,
lag(c2,1,'') over (order by c1) 
from (values(1,'a'), (2,'b'), (3,'c')) t(c1,c2)

select *,
lag(c2) over (partition by c1 order by c2) 
from (values(1,'a'),(1,'b'),(2,'c'),(2,'d'),(2,'e')) t(c1,c2)