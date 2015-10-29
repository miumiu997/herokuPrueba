class Category < ActiveRecord::Base 
	validates :name, :description, presence: true 
	has_many :has_categories, dependent: :destroy
	has_many :items, through: :has_categories

def self.search(search)
	if search
		where(["name LIKE ?","%#{search}%"])
	else
		all
	end
end

end
