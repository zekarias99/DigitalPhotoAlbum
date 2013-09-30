class PicturesController < ApplicationController

	def create
		@album = Album.find(params[:id])
		@picture = @album.pictures.create(picture_params)
	end

	private
		def picture_params
			params.require(:picture).permit(:image)
		end

end
