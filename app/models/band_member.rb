class BandMember < ActiveRecord::Base

  validates :full_name, presence: true

  belongs_to :band
end
