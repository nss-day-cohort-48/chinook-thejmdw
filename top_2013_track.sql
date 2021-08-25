-- select max(track_count), name
-- from (select count(track.name) as track_count, track.name
-- from Invoice
-- join InvoiceLine on invoiceline.InvoiceId=invoice.invoiceid
-- join track on invoiceline.trackid=track.trackid
-- where InvoiceDate between '2013-01-01' and '2013-12-31'
-- group by track.name
-- order by track_count desc)

select count(track.name) as track_count, track.name
from Invoice
join InvoiceLine on invoiceline.InvoiceId=invoice.invoiceid
join track on invoiceline.trackid=track.trackid
where InvoiceDate between '2013-01-01' and '2013-12-31'
group by track.name
order by track_count desc