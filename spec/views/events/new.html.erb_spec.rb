require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :band_id => 1,
      :venue_id => "MyString",
      :date => "",
      :booking_agent_number => "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_band_id[name=?]", "event[band_id]"

      assert_select "input#event_venue_id[name=?]", "event[venue_id]"

      assert_select "input#event_date[name=?]", "event[date]"

      assert_select "input#event_booking_agent_number[name=?]", "event[booking_agent_number]"
    end
  end
end
