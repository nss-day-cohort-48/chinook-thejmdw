select count(employee.employeeid), employee.firstname || " " || employee.lastname as agent_full_name
from employee
join customer on customer.supportrepid=employee.employeeid
group by employee.FirstName