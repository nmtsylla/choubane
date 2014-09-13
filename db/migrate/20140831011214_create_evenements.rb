class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :titre
      t.datetime :date_event
      t.string :lieu
      t.text :details
      t.references :user, index: true

      t.timestamps
    end
  end
end
