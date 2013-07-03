class PagesController < ApplicationController

  def landing
    if user_signed_in?
      unless current_user.has_babies?
        redirect_to new_baby_path
      end
    end
  end

  def about
  end

end
