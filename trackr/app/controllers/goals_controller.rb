class GoalsController < ApplicationController

    def goal_params
        params.require(:goal).permit(:goal)
    end
    
    def index
        #@goals = Goal.find(session[:uid])
    end
    
    def edit
        @goals = Goal.find(1)
    end
    
    def destroy
        @goals = Goal.find(1)
        redirect_to goals_path
    end
    
    def new
        @goals = Goal.find(1)
        @goals.goal = 0
        @goals.save!  
        flash[:notice] = "#{@goals} was set back to 0."
    end

    def update
        @goals = Goal.find(1)
        @goals.update_attributes!(goal_params)
        flash[:notice] = "#{@goals} was successfully updated."
        redirect_to goals_path(@goals)
    end
end