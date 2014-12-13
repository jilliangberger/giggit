class Band < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :band_members
  has_many :members
end
