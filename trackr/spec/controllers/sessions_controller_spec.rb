require 'rails_helper'
require 'spec_helper'


describe SessionsController, type: :controller do
  before do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:facebook]
  end
  context 'When logging in with a facebook account' do
    describe "#create" do
      it "should successfully create a user" do
        expect {
          get :create, provider: :facebook
        }.to change{ Trackruser.count }.by(1)
      end
 
      it "should successfully create a session" do
        session[:user_id].should be_nil
        get :create, provider: :facebook
        session[:user_id].should_not be_nil
      end
 
      it "should redirect the user to the goal url" do
        get :create, provider: :facebook
        response.should redirect_to goals_path
      end
    end
  
    describe "#destroy" do
      before do
        post :create, provider: :facebook
      end
   
      it "should clear the session" do
        session[:user_id].should_not be_nil
        delete :destroy
        session[:user_id].should be_nil
      end
   
      it "should redirect to the home page" do
        delete :destroy
        response.should redirect_to root_url
      end
    end
  end
end
