require 'rails_helper'
require 'spec_helper'

RSpec.describe Trackruser, type: :model do
  subject = OmniAuth.config.mock_auth[:facebook]

  it "has a valid mock" do
    expect(subject).to be_valid
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a provider" do
    subject.provider = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a uid" do
    subject.uid = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a oauth_expires_at" do
    subject.oauth_expires_at = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a oauth_token" do
    subject.oauth_token = nil
    expect(subject).to_not be_valid
  end
end
