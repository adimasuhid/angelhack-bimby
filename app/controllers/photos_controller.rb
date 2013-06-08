class PhotosController < ApplicationController
  def new
    @baby = Baby.find params[:baby_id]
    @photo = @baby.photos.new
  end

  def create
    @baby = Baby.find params[:baby_id]
    @photo = @baby.photos.new params[:photo]

    if @photo.save
      #redirect_to home_path
      redirect_to root_path
    end
  end
end
