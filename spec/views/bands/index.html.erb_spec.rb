require 'rails_helper'

RSpec.describe "bands/index", :type => :view do
  before(:each) do
    assign(:bands, [
      Band.create!(
        :band_name => "Band Name",
        :genre => "Genre",
        :email => "Email",
        :phone_number => "Phone Number",
        :home_town => "Home Town",
        :facebook => "Facebook",
        :soundcloud => "Soundcloud",
        :reverbnation => "Reverbnation",
        :band_camp => "Band Camp",
        :venue_id => 1,
        :password_digest => "Password Digest"
      ),
      Band.create!(
        :band_name => "Band Name",
        :genre => "Genre",
        :email => "Email",
        :phone_number => "Phone Number",
        :home_town => "Home Town",
        :facebook => "Facebook",
        :soundcloud => "Soundcloud",
        :reverbnation => "Reverbnation",
        :band_camp => "Band Camp",
        :venue_id => 1,
        :password_digest => "Password Digest"
      )
    ])
  end

  it "renders a list of bands" do
    render
    assert_select "tr>td", :text => "Band Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Home Town".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Soundcloud".to_s, :count => 2
    assert_select "tr>td", :text => "Reverbnation".to_s, :count => 2
    assert_select "tr>td", :text => "Band Camp".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
