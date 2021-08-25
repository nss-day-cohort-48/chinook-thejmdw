select track.name as track_name, album.title as album_title, mediatype.name as media_name, genre.name as genre_name
-- select *
from Track
join genre on genre.genreid=track.genreid
join MediaType on MediaType.MediaTypeId=track.mediatypeid
join album on album.albumid=track.albumid