class Upload < ApplicationRecord
	#belongs_to :user
	# Uploads one image and allows image upload to not be empty
	has_one_attached :image
	validates :image, attached: true

	# Gets image height
	def height
		image.metadata['height']
	end
	
	# Gets image width
	def width
		image.metadata['width']
	end
end
