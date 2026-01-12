# Write your MySQL query statement below
select 
Employees.name, 
EmployeeUNI.unique_id
-- case
--     when EmployeeUNI.unique_id is null then null
--     else EmployeeUNI.unique_id
-- end as unique_id
from Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;