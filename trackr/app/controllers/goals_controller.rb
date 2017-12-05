class GoalsController < ApplicationController
    before_filter :authenticate_user!
    
    def goal_params
        params.require(:goal).permit(:goal)
    end
    
    def index
        @goal = Goal.find(session[:user_id])
    end
    
    def edit
        @goal = Goal.find(session[:user_id])
    end
    
    def destroy
        @goal = Goal.find(session[:user_id])
        @goal.update_attributes!(0)
        @goal.save! 
        redirect_to goals_path
    end
    
    def new
        @goal = Goal.find(session[:user_id])
        @goal.goal = 0
        @goal.save!
        flash[:notice] = "#{@goal} was set back to 0."
    end

    def update
        @goal = Goal.find(session[:user_id])
        @goal.update_attributes!(goal_params)
        flash[:notice] = "#{@goal} was successfully updated."
        redirect_to goals_path
    end
end