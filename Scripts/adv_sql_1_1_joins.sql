-- SELECT e.employeeId AS employee,
-- e.firstName AS employeeFirstName,
-- e.lastName AS employeeLastName,
-- m.employeeId AS manager,
-- m.firstName AS managerFirstName,
-- m.lastName AS managerLastName
-- FROM 
-- employee e INNER JOIN employee 
-- AS m ON e.managerId = m.employeeId;


-- select sql
-- from sqllitescema.tables
-- where name='employee';


SELECT
e.firstName,
e.lastName,
e.employeeId,
e.startDate,
e.title,
s.salesId
from employee e 
left outer join sales s 
on e.employeeId = s.employeeId
where e.title = 'Sales Person'
and s.salesId is NULL;