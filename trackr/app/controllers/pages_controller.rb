class PagesController < ApplicationController
    def index
        if @current_user
            return redirect_to goals_path
        end
    end
end
