select invoiceline.invoicelineid, invoiceline.InvoiceId, track.name, track.composer
from Track
join invoiceline on invoiceline.trackid=track.trackid