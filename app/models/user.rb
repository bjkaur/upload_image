class User < ApplicationRecord
	# ensures encryption
	has_secure_password
	#has_many_attached :uploads
end
