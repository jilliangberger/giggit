require 'rails_helper'

RSpec.describe "bands/show", :type => :view do
  before(:each) do
    @band = assign(:band, Band.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Band Name/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Home Town/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Soundcloud/)
    expect(rendered).to match(/Reverbnation/)
    expect(rendered).to match(/Band Camp/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Password Digest/)
  end
end
