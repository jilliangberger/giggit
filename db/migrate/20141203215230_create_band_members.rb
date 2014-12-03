class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_members do |t|
      t.string :full_name
      t.integer :band_id

      t.timestamps
    end
  end
end
