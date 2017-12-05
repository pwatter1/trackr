class RunninglogsController < ApplicationController
    before_filter :has_user
    
    def has_user
        @current_user = Trackruser.find_by_id(session[:user_id])
        unless @current_user
          flash[:warning] = 'You must be logged in to have running logs!'
          redirect_to root_url
        end
    end
    
    def edit #new
        @runninglog = @current_user.runninglogs.create!(:title => params[:title], :text => params[:text])
        flash[:notice] = "#{@runninglog.title} was successfully created."
        byebug
        redirect_to runninglog_path
    end    
    
    def destroy
        @runninglog = current_user.runninglogs.find(params[:id])
        @runninglog.destroy # 90% sure this deletes specific log
        flash[:notice] = "Event '#{@runninglog.title}' deleted"
        redirect_to runninglog_path
    end
    
    def show
        @runninglogs = Runninglog.all
    end
end