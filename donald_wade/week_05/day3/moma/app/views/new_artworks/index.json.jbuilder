json.array!(@new_artworks) do |new_artwork|
  json.extract! new_artwork, :id, :name, :year, :medium, :artist_id
  json.url new_artwork_url(new_artwork, format: :json)
end
