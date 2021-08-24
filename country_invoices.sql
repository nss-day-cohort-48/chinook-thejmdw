select count(invoiceid), invoice.billingcountry
from Invoice
group by BillingCountry