require 'rails_helper'
require 'spec_helper'

RSpec.describe Trackruser, type: :model do
  subject = OmniAuth.config.mock_auth[:facebook]

  it "is not valid without a provider" do
    subject.provider = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a uid" do
    subject.uid = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a oauth_expires_at" do
    subject.credentials.expires_at = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a oauth_token" do
    subject.credentials.oauth_token = nil
    expect(subject).to_not be_valid
  end
end
