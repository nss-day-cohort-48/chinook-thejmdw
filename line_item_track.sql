select invoiceline.invoicelineid, invoiceline.InvoiceId, track.name
from Track
join invoiceline on invoiceline.trackid=track.trackid