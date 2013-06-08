class PagesController < ApplicationController

  def landing
    unless current_user.has_babies?
      redirect_to new_baby_path
    end
  end

end
