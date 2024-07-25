resource "spotify_playlist" "Fvorite" {
  name = "favorite"
  tracks = ["1Dfa2akEVc3sh6HhAxlZmE"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "SlimShady" {
  name = "slim_shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
  data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id]
}
