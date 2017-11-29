class SessionsController < ApplicationController
    before_filter :current_user

    def create
        user = Trackruser.from_omniauth(env["omniauth.auth"])
        session[:user_id] = user.id
        flash[:success] = "Logged in successfully"
        redirect_to goals_path 
    end
    
    def destroy
        session[:user_id] = nil
        flash[:notice] = 'Logged out successfully'
        redirect_to root_url
    end
    
    def failure
        session[:user_id] = nil
        flash[:notice] = 'Logged out successfully'
        redirect_to root_url
    end
end