class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(permitted_params)

    redirect_to photos_url
  end

  def index
    @photos = Photo.all
  end

  def permitted_params
    params.require(:photo).permit(:owner, :image_url)
  end
end
