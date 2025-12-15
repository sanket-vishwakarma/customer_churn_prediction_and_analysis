Create View vw_ChurnData as
	select * from customer_data where Customer_Status In ('Churned', 'Stayed');

Create View vw_JoinData as
	select * from customer_data where Customer_Status = 'Joined';


# view 1
select *
from vw_churndata;



  

select *
from vw_joindata;