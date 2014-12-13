require 'rails_helper'


feature 'booking an event' do
  scenario 'a band can book an event' do
     band = FactoryGirl.create(:band)

      visit "/bands/#{band.id}"

      click_link "Book a Show"




  end

end
