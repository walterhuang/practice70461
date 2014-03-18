
with t as (
select * 
from (values(1,'a')/*, (2,'b'), (3,'c')*/) t(c1,c2)
), x1(cx) as(
select * from t for xml raw
), x2(cx) as(
select * from t for xml raw, elements
), x3(cx) as(
select * from t for xml auto
), x4(cx) as(
select * from t for xml auto, elements
)
select 'for xml raw', * from x1 union all
select 'for xml raw, elements', * from x2 union all
select 'for xml auto', * from x3 union all
select 'for xml auto, elements', * from x4 

/*  <results>
<row c1="1" c2="a"/>
<row><c1>1</c1><c2>a</c2></row>
<t c1="1" c2="a"/>
<t><c1>1</c1><c2>a</c2></t>
*/