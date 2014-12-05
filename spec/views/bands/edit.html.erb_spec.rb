require 'rails_helper'

RSpec.describe "bands/edit", :type => :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :band_name => "MyString",
      :genre => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :home_town => "MyString",
      :facebook => "MyString",
      :soundcloud => "MyString",
      :reverbnation => "MyString",
      :band_camp => "MyString",
      :venue_id => 1,
      :password_digest => "MyString"
    ))
  end

  it "renders the edit band form" do
    render

    assert_select "form[action=?][method=?]", band_path(@band), "post" do

      assert_select "input#band_band_name[name=?]", "band[band_name]"

      assert_select "input#band_genre[name=?]", "band[genre]"

      assert_select "input#band_email[name=?]", "band[email]"

      assert_select "input#band_phone_number[name=?]", "band[phone_number]"

      assert_select "input#band_home_town[name=?]", "band[home_town]"

      assert_select "input#band_facebook[name=?]", "band[facebook]"

      assert_select "input#band_soundcloud[name=?]", "band[soundcloud]"

      assert_select "input#band_reverbnation[name=?]", "band[reverbnation]"

      assert_select "input#band_band_camp[name=?]", "band[band_camp]"

      assert_select "input#band_venue_id[name=?]", "band[venue_id]"

      assert_select "input#band_password_digest[name=?]", "band[password_digest]"
    end
  end
end
