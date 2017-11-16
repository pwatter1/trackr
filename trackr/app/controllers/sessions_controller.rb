class SessionsController < ApplicationController
   # user shouldn't have to be logged in before logging in 
   skip_before_filter :current_user
   
   def create
        # auth = request.env["omniauth.auth"]
        # user = Trackruser.where(:provider => auth["provider"], :uid => auth["uid"]) || Trackruser.create_with_omniauth(auth)
        user = Trackruser.from_omniauth(env["omniauth.auth"])
        
        session[:user_id] = user.id
        redirect_to goals_path #root_url #PATHHHHHH
    end
    
    def destroy
        session[:user_id] = nil
        flash[:notice] = 'Logged out successfully'
        redirect_to root_url #PATHHHHHH
    end
end