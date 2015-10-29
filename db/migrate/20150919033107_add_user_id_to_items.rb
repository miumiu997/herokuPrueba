class AddUserIdToItems < ActiveRecord::Migration
  def change
    add_reference :items, :user, index: true, foreign_key: true 
    #add_foreign_key :items, :users
  end
end
