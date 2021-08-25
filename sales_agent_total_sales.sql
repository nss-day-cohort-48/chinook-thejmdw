select employee.firstname || " " || employee.lastname as employee_full_name,
    count(invoice.invoiceid)
from employee
join customer on customer.supportRepId=employee.employeeid
join invoice on invoice.customerid=customer.customerid
group by employee_full_name