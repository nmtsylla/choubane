class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.references :user, index: true
      t.string :author
      t.string :string
      t.datetime :date
      t.string :image
      t.string :piste

      t.timestamps
    end
  end
end
