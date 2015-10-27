json.array!(@planets) do |planet|
  json.extract! planet, :id, :name, :image, :num_moons, :mean_radius, :mass
  json.url planet_url(planet, format: :json)
end
