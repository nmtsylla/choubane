class AddTitreToAudio < ActiveRecord::Migration
  def change
    add_column :audios, :titre, :string
  end
end
