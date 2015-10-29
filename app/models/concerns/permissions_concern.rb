module PermissionsConcern 
	extend ActiveSupport::Concern  
	def is_normal_user? 
		self.admin_permission ==0 
	end  

	def is_admin? 
		self.admin_permission ==1
	end
end 