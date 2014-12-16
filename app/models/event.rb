class Event < ActiveRecord::Base

  validates :date, :booking_agent_number, presence: true
  #add a validation for band id and venue id
    belongs_to :bands
    belongs_to :members

end
