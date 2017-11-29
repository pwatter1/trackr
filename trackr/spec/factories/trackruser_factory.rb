require 'faker'

FactoryGirl.define do
  factory :trackruser do
    name 'test'
    provider 'facebook'
    uid '1234'
    oauth_token '123456'
    oauth_expires_at 0
  end
end

#  f.name { Faker::Omniauth.facebook[:info][:name] }
#     f.provider { Faker::Omniauth.facebook[:provider] }
#     f.uid { Faker::Omniauth.facebook[:uid] }
#     f.oauth_token { Faker::Omniauth.facebook[:oauth_token] }
#     f.oauth_expires_at { Faker::Omniauth.facebook[:oauth_expires_at] }