class GoalsController < ApplicationController

    def goal_params
        params.require(:goal).permit(:goal)
    end
    
    def index
        @goals = Goal.find(1)
    end
    
    def create
        redirect_to goals_path # redirect to index
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
    end

    def update
        @goals = Goal.find(1)
        @goals.update_attributes!(goal_params)
        flash[:notice] = "#{@goal} was successfully updated."
        redirect_to goals_path(@goals)
    end
end