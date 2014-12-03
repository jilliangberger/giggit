require 'rails_helper'

RSpec.describe "venues/edit", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :venue_name => "MyString",
      :location => "MyString",
      :contact_number => "MyString",
      :homepage_link => "MyString"
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_venue_name[name=?]", "venue[venue_name]"

      assert_select "input#venue_location[name=?]", "venue[location]"

      assert_select "input#venue_contact_number[name=?]", "venue[contact_number]"

      assert_select "input#venue_homepage_link[name=?]", "venue[homepage_link]"
    end
  end
end
