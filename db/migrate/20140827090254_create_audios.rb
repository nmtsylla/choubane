class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :author
      t.datetime :date
      t.string :url_audio
      t.boolean :published
      t.references :categorie_audio, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
