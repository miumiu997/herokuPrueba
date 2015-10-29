class ChangeColumnAdminPermissionToInt < ActiveRecord::Migration
  def change 
  	remove_column :users, :admin_permission, :string 
  	add_column :users, :admin_permission, :integer, default: 0  
  end 
end
