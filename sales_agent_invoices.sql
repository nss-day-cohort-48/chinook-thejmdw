SELECT invoice.invoiceId, invoice.total, invoice.billingcountry, customer.firstname as cfn, customer.lastname as cln, employee.FirstName as efn, employee.lastname as eln
-- SELECT *
FROM customer 
JOIN employee on customer.SupportRepId=Employee.EmployeeId
JOIN invoice on customer.customerid=invoice.customerid