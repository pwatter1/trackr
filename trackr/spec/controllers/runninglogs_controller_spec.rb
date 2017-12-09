include OmniAuthTestHelper
require 'rails_helper'

describe RunninglogsController, type: :controller do
  
  describe 'GET #new' do
    let(:params) { {:title => "Test", :text => "TEST"} }
    let(:runninglog) {double("RLT", params) }
    
    it "calls the model and creates a new RunningLog" do
      allow(runninglog).to receive(:update_attributes)
      expect(Runninglog).to receive(:create!).with(params).and_return(runninglog)
    
      post :create, runninglog: params
    end
  end
  
  # describe 'GET #index' do
    
  #   fixtures :runninglog
  #   before :each do
  #       Trackruser.from_omniauth(env["omniauth.auth"])
  #       @id = "1"
  #       @session[:user_id] = @user.id
  #       # request.host = 'https://in-class-mlehman1.c9users.io/'
  #   end

  #   it 'should render the index template' do
  #     get :index
  #     expect(response).to render_template('index')
  #   end
  # end
  
  # describe 'GET #show' do
  #   it 'should render the index template' do
  #     get :index
  #     expect(response).to render_template('show')
  #   end
  # end
end
