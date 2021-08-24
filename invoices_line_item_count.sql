select invoiceid, count(invoicelineid) as lines
from invoiceline 
group by (invoiceid)