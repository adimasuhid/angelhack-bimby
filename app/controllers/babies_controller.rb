class BabiesController < ApplicationController
  def index
    #get baby
    
    @baby = Baby.first
    @photo = @baby.photos.first

  end

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new params["baby"]

    if @baby.save
      #
      #change this to home path
      #
      #
      redirect_to root_path

    end
  end
end
