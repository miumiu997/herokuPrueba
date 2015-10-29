class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :size
      t.text :description
      t.integer :price
      t.integer :likes, default: 0
      t.integer :availability, default: 0
      t.integer :visits_count, default: 0

      t.timestamps null: false
    end
  end
end
