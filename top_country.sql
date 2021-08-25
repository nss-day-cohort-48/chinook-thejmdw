select billingcountry, max(total_sales)
from (select sum(total) as total_sales, billingcountry
from Invoice
group by BillingCountry)
