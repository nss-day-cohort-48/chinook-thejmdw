select playlist.playlistid, playlist.name, count((playlisttrack.trackid))
from Playlist
join playlisttrack on playlisttrack.playlistid=playlist.playlistid
group by playlist.PlaylistId
