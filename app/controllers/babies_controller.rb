class BabiesController < ApplicationController
  def index
    #get baby
    @user = User.find params[:id]
    @baby = @user.babies.first
    @photo = @baby.photos.first

  end

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new params["baby"]

    if @baby.save
      redirect_to root_path
    end
  end
end
