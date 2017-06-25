class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def user_not_authorized
    redirect_to("/")
    flash[:warning] = "You are not authorized to perform this action."
  end
end
