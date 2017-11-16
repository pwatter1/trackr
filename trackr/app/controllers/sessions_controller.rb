class SessionsController < ApplicationController
   # user shouldn't have to be logged in before logging in 
   skip_before_filter :set_current_user
   
   def create
        auth = request.env["omniauth.auth"]
        user = Trackruser.where(:provider => auth["provider"], :uid => auth["uid"]) || Trackruser.create_with_omniauth(auth)
        session[:uid] = user.id
        redirect_to goals_path #PATHHHHHH
    end
    
    def destroy
        sesion.delete(:user_id)
        flash[:notice] = 'Logged out successfully'
        redirect_to goals_path #PATHHHHHH
    end
end