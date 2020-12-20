json.array!(@venues) do |venue|
  json.extract! venue, :id, :sk_id, :spotify_playlist_id, :name
  json.url venue_url(venue, format: :json)
end
