class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keyword
      t.string :category
      t.string :size
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
