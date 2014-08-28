class CreateCategoriePosts < ActiveRecord::Migration
  def change
    create_table :categorie_posts do |t|
      t.string :name
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
