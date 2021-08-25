select BillingCountry, sum(total)
from Invoice
group by BillingCountry
