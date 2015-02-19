json.array!(@rectangles) do |rectangle|
  json.extract! rectangle, :id, :name, :latitude0, :longitude0, :latitude1, :longitude1
  json.url rectangle_url(rectangle, format: :json)
end
