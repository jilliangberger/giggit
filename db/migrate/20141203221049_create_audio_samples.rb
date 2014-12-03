class CreateAudioSamples < ActiveRecord::Migration
  def change
    create_table :audio_samples do |t|
      t.integer :band_id
      t.string :title

      t.timestamps
    end
  end
end
