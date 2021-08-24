SELECT invoice.total, invoice.billingcountry, customer.firstname + customer.lastname, employee.firstname, employee.lastname
FROM invoice 
JOIN employee on customer.SupportRepId=Employee.EmployeeId
JOIN customer on invoice.customerid=customer.customerid