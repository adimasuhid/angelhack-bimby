class MilestonesController < ApplicationController
  before_filter :first_baby_of_user

  def index
    @baby = Baby.find params[:baby_id]
    @milestones = @baby.milestones
  end

  def new
    @baby = Baby.find params[:baby_id]
    @milestone = @baby.milestones.new 
    @photo = Photo.new
    @milestone_types = MilestoneType.all.map{|type| [type.name, type.id]}
  end

  def create
    @baby = Baby.find params[:baby_id]
    @photo = @baby.photos.create!(full_url: params[:full_url])

    @milestone = @baby.milestones.new(photo_id: @photo.id, date: DateTime.now, milestone_type_id:params[:milestone][:milestone_type_id])
    if @milestone.save
      redirect_to babies_path
    end
  end

private

  def first_baby_of_user
    @baby = current_user.babies.first
  end

end
