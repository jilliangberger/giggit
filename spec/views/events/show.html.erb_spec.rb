require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :band_id => 1,
      :venue_id => "Venue",
      :date => "",
      :booking_agent_number => "Booking Agent Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Booking Agent Number/)
  end
end
