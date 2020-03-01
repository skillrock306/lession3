class Micropost < ApplicationRecord
	belongs_to :category, :optional => true 
	belongs_to :user
	
	validates :content, length: { maximum: 1000 }, presence: true
	def self.search(search)
		if search
			where("LOWER(content) LIKE :search",
			search: "%#{search}%")
		else
			all	
		end
	end
end
