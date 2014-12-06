class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :band_id
      t.integer :venue_id
      t.datetime :date
      t.string :booking_agent_number

      t.timestamps
    end
  end
end
