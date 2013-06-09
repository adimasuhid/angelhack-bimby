class ApiController < ApplicationController
  def show

  end

  def baby_milestones
    @baby = Baby.find params[:id]
    @milestones = @baby.milestones
    @milestone_types = MilestoneType.all

    render :json => {
      :baby => @baby.as_json(:include => [:milestones,:photos]),
      #:milestones_met => @milestones.as_json,
      :milestones => @milestone_types.as_json
    } 
  end

end
