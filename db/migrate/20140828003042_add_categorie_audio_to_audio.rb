class AddCategorieAudioToAudio < ActiveRecord::Migration
  def change
    add_column :audios, :categorie_audio, :integer
  end
end
