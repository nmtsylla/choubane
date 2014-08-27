class CreateCategorieAudios < ActiveRecord::Migration
  def change
    create_table :categorie_audios do |t|
      t.string :name
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
