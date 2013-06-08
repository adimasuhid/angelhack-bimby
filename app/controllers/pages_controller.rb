class PagesController < ApplicationController

  def landing
<<<<<<< .merge_file_ae0nXF
    if user_signed_in?
      unless current_user.has_babies?
        redirect_to new_baby_path
      end
    end
=======

>>>>>>> .merge_file_m7MRd4
  end

end
