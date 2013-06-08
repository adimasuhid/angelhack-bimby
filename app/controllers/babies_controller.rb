class BabiesController < ApplicationController
  def index
    #get baby
    
    unless current_user.has_babies?
      redirect_to new_baby_path
    end
    
    @baby = Baby.first
    @photo = @baby.photos.first

  end

  def new
    @baby = current_user.babies.new
  end

  def create
    @baby = current_user.babies.new params[:baby]

    if @baby.save
      redirect_to new_baby_photo_path(@baby)
    end
  end
end
