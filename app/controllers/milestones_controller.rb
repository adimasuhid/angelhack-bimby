class MilestonesController < ApplicationController
  before_filter :first_baby_of_user

  def index
    @milestones = @baby.milestones
  end

  def new
    @milestone = @baby.milestones.new 
  end

  def create
    @milestone = @baby.milestones.new params[:milestone]
    if @milestone.save
    end
  end

private

  def first_baby_of_user
    @baby = current_user.babies.first
  end

end
