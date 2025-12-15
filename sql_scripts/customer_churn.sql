create database churn_analysisvw_churndata;

select * from customer_data;

SELECT
    SUM(CASE WHEN Value_Deal = '' THEN 1 ELSE 0 END) AS Value_Deal_Empty_String_Count
FROM
    stage_churn;
-- 1. Value_Deal: Change NULL or '' to 'None'
UPDATE customer_data
SET Value_Deal = 'None'
WHERE Value_Deal IS NULL OR Value_Deal = '';

-- 2. Multiple_Lines: Change NULL or '' to 'No'
UPDATE customer_data
SET Multiple_Lines = 'No'
WHERE Multiple_Lines IS NULL OR Multiple_Lines = '';

-- 3. Internet_Type: Change NULL or '' to 'None'
UPDATE customer_data
SET Internet_Type = 'None'
WHERE Internet_Type IS NULL OR Internet_Type = '';

-- 4. Online_Security: Change NULL or '' to 'No'
UPDATE customer_data
SET Online_Security = 'No'
WHERE Online_Security IS NULL OR Online_Security = '';

-- 5. Online_Backup: Change NULL or '' to 'No'
UPDATE customer_data
SET Online_Backup = 'No'
WHERE Online_Backup IS NULL OR Online_Backup = '';

-- 6. Device_Protection_Plan: Change NULL or '' to 'No'
UPDATE customer_data
SET Device_Protection_Plan = 'No'
WHERE Device_Protection_Plan IS NULL OR Device_Protection_Plan = '';

-- 7. Premium_Support: Change NULL or '' to 'No'
UPDATE customer_data
SET Premium_Support = 'No'
WHERE Premium_Support IS NULL OR Premium_Support = '';

-- 8. Streaming_TV: Change NULL or '' to 'No'
UPDATE customer_data
SET Streaming_TV = 'No'
WHERE Streaming_TV IS NULL OR Streaming_TV = '';

-- 9. Streaming_Movies: Change NULL or '' to 'No'
UPDATE customer_data
SET Streaming_Movies = 'No'
WHERE Streaming_Movies IS NULL OR Streaming_Movies = '';

-- 10. Streaming_Music: Change NULL or '' to 'No'
UPDATE customer_data
SET Streaming_Music = 'No'
WHERE Streaming_Music IS NULL OR Streaming_Music = '';

-- 11. Unlimited_Data: Change NULL or '' to 'No'
UPDATE customer_data
SET Unlimited_Data = 'No'
WHERE Unlimited_Data IS NULL OR Unlimited_Data = '';

-- 12. Churn_Category: Change NULL or '' to 'Others'
UPDATE customer_data
SET Churn_Category = 'Others'
WHERE Churn_Category IS NULL OR Churn_Category = '';

-- 13. Churn_Reason: Change NULL or '' to 'Others'
UPDATE customer_data
SET Churn_Reason = 'Others'
WHERE Churn_Reason IS NULL OR Churn_Reason = '';




SELECT Gender, count(Gender) as TotalCount,
count(Gender) * 1.0 / (Select count(*) from customer_data)  as Percentage
from customer_data
Group by Gender;

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by Contract;


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from customer_data) * 100  as RevPercentage
from customer_data
Group by Customer_Status;

SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by State
Order by Percentage desc;


