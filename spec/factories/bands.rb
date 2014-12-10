FactoryGirl.define do
  factory :band do
    band_name {Faker::Name.first_name}
# genre "MyString"
    email {Faker::Internet.email}
# phone_number "MyString"
# home_town "MyString"
# facebook "MyString"
# soundcloud "MyString"
# reverbnation "MyString"
# band_camp "MyString"
# venue_id 1
    password {Faker::Internet.password }
    password_confirmation { password }
  end
end
