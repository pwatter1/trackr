class RunninglogsController < ApplicationController
    before_filter :has_user

      def runninglog_params
        params.require(:runninglog).permit(:title, :text, :miles, :rundate)
      end
  
    def has_user
        @current_user = Trackruser.find_by_id(session[:user_id])
        unless @current_user
          flash[:warning] = 'You must be logged in to have running logs!'
          redirect_to root_url
        end
    end
    
    def new
        @runninglog = Runninglog.new
        # default: render 'new' template
    end 
    
    def create
        @runninglog = @current_user.runninglogs.create!(runninglog_params)
        flash[:notice] = "#{@runninglog.title} was successfully created."
        redirect_to runninglogs_path
    end
    
    def edit
        @runninglog = Runninglog.find params[:id]
    end
    
    def update
        @runninglog = Runninglog.find params[:id]
        @runninglog.update_attributes!(runninglog_params)
        flash[:notice] = "#{@runninglog.title} was successfully updated."
        redirect_to runninglog_path
    end
    
    def destroy
        @runninglog = current_user.runninglogs.find(params[:id])
        @runninglog.destroy # 90% sure this deletes specific log
        flash[:notice] = "Event '#{@runninglog.title}' deleted"
        redirect_to runninglogs_path
    end
    
    def index
        @runninglogs = Runninglog.where(trackruser_id: session[:user_id])
        respond_to do |format|
            format.html
        end
    end
    
    def show
        id = params[:id] 
        @runninglog = Runninglog.find(id)
    end
    
end