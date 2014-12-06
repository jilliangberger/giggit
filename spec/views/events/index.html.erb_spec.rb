require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :band_id => 1,
        :venue_id => "Venue",
        :date => "",
        :booking_agent_number => "Booking Agent Number"
      ),
      Event.create!(
        :band_id => 1,
        :venue_id => "Venue",
        :date => "",
        :booking_agent_number => "Booking Agent Number"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Booking Agent Number".to_s, :count => 2
  end
end
