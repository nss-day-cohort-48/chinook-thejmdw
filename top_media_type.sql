select count(track.mediatypeid) as media_count, mediatype.name
from Invoice
join InvoiceLine on invoiceline.InvoiceId=invoice.invoiceid
join track on invoiceline.trackid=track.trackid
join mediatype on track.mediatypeid=mediatype.mediatypeid
-- where InvoiceDate between '2013-01-01' and '2013-12-31'
group by track.mediatypeid
order by media_count desc
limit 1