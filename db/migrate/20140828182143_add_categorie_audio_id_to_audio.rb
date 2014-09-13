class AddCategorieAudioIdToAudio < ActiveRecord::Migration
  def change
    add_column :audios, :categorie_audio_id, :integer
  end
end
