select billingcountry, sum(total)
from Invoice
group by BillingCountry
