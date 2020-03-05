class Micropost < ApplicationRecord
	has_many :category
	belongs_to :user
	has_one_attached :avatar 
	validates :content, length: { maximum: 1000 }, presence: true
	def self.search(search)
		if search
			where("content LIKE :search",
			search: "%#{search}%")
		else
			all	
		end
	end
end
