class BabiesController < ApplicationController
  before_filter :authenticate_user!

  def index
    #get baby
    
    unless current_user.has_babies?
      redirect_to new_baby_path
    else
      @baby = current_user.babies.first
      @profile_photo = @baby.photos.first
      @photos = @baby.photos
      @babies = Baby.all
    end

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

  def growth
    #change to chosen baby
    @baby = current_user.babies.first
  end

end
