json.array!(@oceans) do |ocean|
  json.extract! ocean, :id, :name, :image, :place, :area, :volume
  json.url ocean_url(ocean, format: :json)
end
