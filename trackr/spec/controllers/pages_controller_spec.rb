
require 'rails_helper'

describe PagesController, type: :controller do
  describe 'GET #index' do

    before :each do
      @request.host = '127.0.0.1:3000'
    end

    it 'should render the index template' do
      get :index
      expect(response).to render_template('index')
    end
    
    it 'should redirect to goals path' do 
      expect(response).to redirect_to(goals_path)
      # get("/").should route_to("goals#index")
    end
  end
end