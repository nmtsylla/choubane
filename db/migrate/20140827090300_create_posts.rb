class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.string :title
      t.text :content
      t.boolean :published
      t.integer :nbr_views

      t.timestamps
    end
  end
end
