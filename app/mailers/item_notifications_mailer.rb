class ItemNotificationsMailer < ApplicationMailer
	default from: 'requemientos@gmail.com'

	def item_email(user,status)
		@user = user
		if status == 1
			@body = "Your item has been accepted"
		elsif status == 0
			@body = "Your item was rejected because it does not meet the website's standards" 
		end
		@time = Time.now
		mail(to: @user.email, subject: 'Item approval status', body: @body)
	end
end
