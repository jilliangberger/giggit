class Event < ActiveRecord::Base

  validates :date, :booking_agent_number, presence: true

    belongs_to :bands
    belongs_to :members

end
