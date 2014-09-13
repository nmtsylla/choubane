class AddCategoriePostIdToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :categorie_post, index: true
  end
end
