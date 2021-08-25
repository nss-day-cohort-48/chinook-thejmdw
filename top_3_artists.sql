-- select count(track.composer) as composer_count, track.composer
-- from Invoice
-- join InvoiceLine on invoiceline.InvoiceId=invoice.invoiceid
-- join track on invoiceline.trackid=track.trackid

-- -- where InvoiceDate between '2013-01-01' and '2013-12-31'
-- group by track.composer
-- order by composer_count desc
-- limit 3

select count(artist.name) as artist_count, artist.name
from Invoice
join InvoiceLine on invoiceline.InvoiceId=invoice.invoiceid
join track on invoiceline.trackid=track.trackid
join album on track.albumid=album.albumid
join artist on album.artistid=artist.artistid
where InvoiceDate between '2013-01-01' and '2013-12-31'
group by artist.name
order by artist_count desc
limit 3

