class AlbumsController < ApplicationController

  def new
  	@album = Album.new
  end

  def create
  	@album = Album.new(album_params)
  	if @album.save
  		flash[:success] = "Album created!"
      redirect_to @album
  	else
  		render 'new'
  	end
  end

  def show
  	@album = Album.find(params[:id])
  end

  def index
  	@albums = Album.all(:order => "`created_at` ASC")
  end

  def edit
  	@album = Album.find(params[:id])
  end

  def update
  	@album = Album.find(params[:id])
  	if @album.update(album_params)
  		flash[:success] = "Album updated!"
  		redirect_to @album
  	else
  		render 'edit'
  	end
  end

  def destroy
  	Album.find(params[:id]).destroy
  	flash[:success] = "Album destroyed!"
  	redirect_to albums_path
  end

  private
  	def album_params
  		permitted = params.require(:album).permit(:title, :description, :date)
  	end

end
