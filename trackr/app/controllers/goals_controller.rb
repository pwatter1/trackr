class GoalsController < ApplicationController
    # used this page as an example
    # https://github.com/tjh/Basic-Rails-CRUD/blob/master/app/controllers/posts_controller.rb
    
    # list all goals
    def index 
        @goals = Goal.find(1)
    end
    
    def new
        @goals = Goal.new
    end
    
    def create
        redirect_to goals_path
    end
    
    def edit
        @goal = Goal.find(1)
        redirect_to goals_path
    end

    def destroy
    end

end

