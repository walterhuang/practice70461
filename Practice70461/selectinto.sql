--http://www.blackwasp.co.uk/SQLSelectInsert.aspx

create table dbo.Person
(
Id int primary key,
FirstName nvarchar(25) not null,
LastName nvarchar(25)
)

insert dbo.Person values(1, 'walt', 'huang')
insert into dbo.Person values(2, 'chia', 'li')

select *
into dbo.Employee
from dbo.Person p
where p.Id = 2

select * from dbo.Person
select * from dbo.Employee

drop table dbo.Person
drop table dbo.Employee
