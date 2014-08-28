class AddAttachmentPisteImageToAudios < ActiveRecord::Migration
  def self.up
    change_table :audios do |t|
      t.attachment :piste
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :audios, :piste
    remove_attachment :audios, :image
  end
end
