class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :band
      t.string :full_name
      t.string :instrument

      t.timestamps
    end
  end
end
