json.array!(@bands) do |band|
  json.extract! band, :id, :band_name, :genre, :venue_id
  json.url band_url(band, format: :json)
end
