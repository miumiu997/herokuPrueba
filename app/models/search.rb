class Search < ActiveRecord::Base
	def search_items
		items = Item.all
		
		items = items.where(["name LIKE ? ","%#{keyword}%"]) if keyword.present?
		items = items.where(["category LIKE ? ",category]) if category.present?
		items = items.where(["size LIKE ? ",size]) if size.present?
		items = items.where(["description LIKE ? ",description]) if description.present?
		items = items.where(["price LIKE ? ",price.to_i]) if price.present?

		return items
	end
end
