json.array!(@venues) do |venue|
  json.extract! venue, :id, :venue_name, :location, :contact_number, :homepage_link
  json.url venue_url(venue, format: :json)
end
