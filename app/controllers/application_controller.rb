class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  def login!(user)
    session[:session_token] = user.reset_session_token!
  end
end
