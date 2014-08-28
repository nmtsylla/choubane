class AddCategoriePostToPost < ActiveRecord::Migration
  def change
    add_column :posts, :categorie_post, :integer
  end
end
