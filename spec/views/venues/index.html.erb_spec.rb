require 'rails_helper'

RSpec.describe "venues/index", :type => :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        :venue_name => "Venue Name",
        :location => "Location",
        :contact_number => "Contact Number",
        :homepage_link => "Homepage Link"
      ),
      Venue.create!(
        :venue_name => "Venue Name",
        :location => "Location",
        :contact_number => "Contact Number",
        :homepage_link => "Homepage Link"
      )
    ])
  end

  it "renders a list of venues" do
    render
    assert_select "tr>td", :text => "Venue Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "Homepage Link".to_s, :count => 2
  end
end
