SELECT customer.FirstName, customer.LastName, Invoice.InvoiceId, Invoice.BillingCountry, Invoice.InvoiceDate
FROM Invoice
JOIN Customer ON Invoice.CustomerId=Customer.CustomerId