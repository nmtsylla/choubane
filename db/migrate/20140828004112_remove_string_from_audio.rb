class RemoveStringFromAudio < ActiveRecord::Migration
  def change
    remove_column :audios, :string, :string
  end
end
