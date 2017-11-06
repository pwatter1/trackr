class GoalsController < ApplicationController
    # used this page as an example
    # https://github.com/tjh/Basic-Rails-CRUD/blob/master/app/controllers/posts_controller.rb
    
    def goal_params
        params.require(:goal).permit(:goal)
    end
    
    # list all goals
    def index 
        @goals = Goal.find(1)
    end
    
    def new
        @goals = Goal.find(1)
    end
    
    def create
        redirect_to goals_path
    end
    
    def edit
        @goals = Goal.find(1)
    end

    def update
        @goals = Goal.find(1)
        @goals.update_attributes!(goal_params)
        # @goals = Goal.find(1)
        # @goals.goal = params[:goal]
        # @goals.save!   
        #flash[:notice] = "#{@goal.id} was successfully updated."
        redirect_to goals_path(@goals)
    end

    def destroy
        #not needed
    end
end