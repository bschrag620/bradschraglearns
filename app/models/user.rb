class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness :true, presence :true, email: true

end
