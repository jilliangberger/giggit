require 'rails_helper'

RSpec.describe "venues/show", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :venue_name => "Venue Name",
      :location => "Location",
      :contact_number => "Contact Number",
      :homepage_link => "Homepage Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Venue Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/Homepage Link/)
  end
end
