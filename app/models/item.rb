class Item < ActiveRecord::Base 
	belongs_to :user 
	has_many :comments, dependent: :destroy 
	has_many :categories, through: :has_category
	has_many :has_categories, dependent: :destroy
	has_many :categories, through: :has_categories
	accepts_nested_attributes_for :comments 

	include PermissionsConcern

	has_attached_file :cover, styles: {medium: "1280x720", thumb: "600x400"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/ 
	after_create :save_categories
	after_update :send_notification_email

	def self.search(search)
		if search
			where(["name LIKE ?","%#{search}%"])
		else
			all
		end
	end
	def categories=(value) 
		@categories = value  
	end 

	

	def send_notification_email
		@user = User.find(self.user_id)
		if self.availability == 0 && !self.new_record? && self.availability_changed?
		  ItemNotificationsMailer.item_email(@user,0).deliver_later
		elsif self.availability == 1 && !self.new_record? && self.availability_changed?
		  ItemNotificationsMailer.item_email(@user,1).deliver_later
		end
	end
	 
	def update_likes  
		self.update(likes: self.likes + 1)
	end 

	def save_categories 
		unless @categories == nil 
			@categories.each do |category_id| 
				HasCategory.create(category_id: category_id, item_id: self.id)
			end 
		end
	end 

end
