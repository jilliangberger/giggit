class Band < ActiveRecord::Base
  has_secure_password

  validates :band_name, :genre, :home_town, :email, presence: true, uniqueness: true

  has_many :band_members
  has_many :members
end
