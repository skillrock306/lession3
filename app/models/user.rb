class User < ApplicationRecord
	has_secure_password
	has_many :microposts
	validates :name, presence: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } , presence: true
	def to_param
		"#{id}-#{name}".parameterize
	end 
	def self.search(search)
		if search
			where("LOWER(name) LIKE :search OR LOWER(email) LIKE :search",
			search: "%#{search}%")
		else
			all	
		end
	end
end
