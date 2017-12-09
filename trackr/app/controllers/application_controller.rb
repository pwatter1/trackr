class ApplicationController < ActionController::Base
  before_filter :current_user
  protect_from_forgery with: :exception
  
  def current_user 
      @current_user ||= Trackruser.find(session[:user_id]) if session[:user_id]
  end
  
  def authenticate_user!
    if !current_user
      redirect_to root_url, :notice => 'not logged in'
    end
  end
  
  helper_method :current_user
end

