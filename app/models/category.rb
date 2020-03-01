class Category < ApplicationRecord
	has_many :microposts
	validates :cate_name,length: { maximum: 255 }, presence: true
end
