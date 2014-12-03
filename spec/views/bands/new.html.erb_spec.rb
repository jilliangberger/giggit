require 'rails_helper'

RSpec.describe "bands/new", :type => :view do
  before(:each) do
    assign(:band, Band.new(
      :band_name => "MyString",
      :genre => "MyString",
      :venue_id => 1
    ))
  end

  it "renders new band form" do
    render

    assert_select "form[action=?][method=?]", bands_path, "post" do

      assert_select "input#band_band_name[name=?]", "band[band_name]"

      assert_select "input#band_genre[name=?]", "band[genre]"

      assert_select "input#band_venue_id[name=?]", "band[venue_id]"
    end
  end
end
