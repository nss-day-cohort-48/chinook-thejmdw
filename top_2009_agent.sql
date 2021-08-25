select max(total_sales), fullname
from (select sum(invoice.total) as total_sales, 
    employee.firstname ||' '|| employee.lastname as fullname
from employee
join customer on customer.supportrepid=employee.employeeid
join invoice on invoice.customerid=customer.customerid
where InvoiceDate between '2009-01-01' and '2009-12-31'
group by employee.FirstName)