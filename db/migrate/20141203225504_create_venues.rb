class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :location
      t.string :contact_number
      t.string :homepage_link
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
