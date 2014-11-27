class MenStore < ActiveRecord::Base
	def self.search_for(query)
		where('item_name LIKE :query', query: "%#{query}%")
	end
end