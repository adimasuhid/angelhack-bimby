class OmniauthCallbacksController < ApplicationController
  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
        sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      if current_user.has_babies?
        redirect_to root_path
      else
        redirect_to new_baby_path
      end
    end
  end

  def failure
    redirect_to user_omniauth_authorize_path(:facebook)
  end
end
