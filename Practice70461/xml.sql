--create table #t

--insert into #t
select * 
into #t 
from (values(1,'a'), (2,'b'), (3,'c')) t(c1,c2)

select * from #t for xml raw
select * from #t for xml raw, elements
select * from #t for xml auto

drop table #t
