json.array!(@events) do |event|
  json.extract! event, :id, :band_id, :venue_id, :date, :booking_agent_number
  json.url event_url(event, format: :json)
end
