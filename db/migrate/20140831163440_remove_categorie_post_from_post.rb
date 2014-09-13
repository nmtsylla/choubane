class RemoveCategoriePostFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :categorie_post, :integer
  end
end
