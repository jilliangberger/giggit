json.array!(@bands) do |band|
  json.extract! band, :id, :band_name, :genre, :email, :phone_number, :home_town, :facebook, :soundcloud, :reverbnation, :band_camp, :venue_id, :password_digest
  json.url band_url(band, format: :json)
end
