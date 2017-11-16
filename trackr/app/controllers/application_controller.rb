class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :current_user
  protect_from_forgery with: :exception
  
  def current_user 
      @current_user ||= Trackruser.find(session[:user_id]) if session[:user_id]   
      #@current_user ||= Trackruser.find_by(id: session[:user_id])
  end
  
  helper_method :current_user
end
