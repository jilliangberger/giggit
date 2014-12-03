class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :genre
      t.string :email
      t.string :phone_number
      t.string :home_town
      t.string :facebook
      t.string :soundcloud
      t.string :reverbnation
      t.string :band_camp
      t.integer :venue_id
      t.string :password_digest

      t.timestamps
    end
  end
end
