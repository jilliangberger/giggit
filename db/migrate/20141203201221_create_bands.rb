class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :genre
      t.integer :venue_id

      t.timestamps
    end
  end
end
