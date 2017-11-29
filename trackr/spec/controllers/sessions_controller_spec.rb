include OmniAuthTestHelper
require 'rails_helper'
require 'spec_helper'

describe "GET '/auth/facebook/callback'", :type => :request do
  before(:each) do
    valid_facebook_login_setup
    get "/auth/facebook/callback"
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
  end

  it "should set user_id" do
    expect(session[:user_id]).to eq(Trackruser.last.id)
  end

  it "should redirect to goals dashboard" do
    expect(response).to redirect_to goals_path
  end
end

describe "GET '/auth/destroy'", :type => :request do

  # it "should set user_id" do
  #   expect(session[:user_id]).to eq(nil)
  # end

  # it 'returns 200 http status code' do
  #     expect(flash[ :notice ]).to be_present
  # end

  it "should redirect to root" do
    get "/auth/failure"
    expect(response).to redirect_to root_path
  end
end