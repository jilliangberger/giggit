require 'rails_helper'

RSpec.describe "venues/new", :type => :view do
  before(:each) do
    assign(:venue, Venue.new(
      :venue_name => "MyString",
      :location => "MyString",
      :contact_number => "MyString",
      :homepage_link => "MyString"
    ))
  end

  it "renders new venue form" do
    render

    assert_select "form[action=?][method=?]", venues_path, "post" do

      assert_select "input#venue_venue_name[name=?]", "venue[venue_name]"

      assert_select "input#venue_location[name=?]", "venue[location]"

      assert_select "input#venue_contact_number[name=?]", "venue[contact_number]"

      assert_select "input#venue_homepage_link[name=?]", "venue[homepage_link]"
    end
  end
end
