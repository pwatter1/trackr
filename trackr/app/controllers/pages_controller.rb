class PagesController < ApplicationController
    def index
        if @current_user
            redirect_to goals_path
        end
    end
end
