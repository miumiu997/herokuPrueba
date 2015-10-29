module ApplicationHelper
	def find_user_email(comment)
		@comment2 = comment
		@user2 = User.find(@comment2.user_id)
		return @user2.email
	end
	def update_visits_count(item)  
		item.update(likes: item.likes + 1)
		return item.likes
	end

end
