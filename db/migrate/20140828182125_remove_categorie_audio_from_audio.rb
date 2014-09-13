class RemoveCategorieAudioFromAudio < ActiveRecord::Migration
  def change
    remove_column :audios, :categorie_audio, :integer
  end
end
