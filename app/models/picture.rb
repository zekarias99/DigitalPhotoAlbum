class Picture < ActiveRecord::Base
	validates :image, :album_id, :presence => true
	mount_uploader :image, PictureUploader

	before_destroy { self.remove_image! }

end
