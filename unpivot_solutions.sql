-- unpivot problem solution
select * 
from crosstabdata

select '1' as "col1"
,"1" as "value"
from crosstabdata
union all 
select '2' as "col1"
,"2" as "value"
from crosstabdata
union all 
select '3' as "col1"
,"3" as "value"
from crosstabdata
union all 
select '4' as "col1"
,"4" as "value"
from crosstabdata