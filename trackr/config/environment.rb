# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# OmniAuth.config.test_mode = true
# OmniAuth.config.mock_auth[:facebook] = {
#   'uid' => '12345',
#   "user_info" => {
#     "email" => "foobar@example.com",
#     "first_name" => "foo",
#     "last_name" => "Bar"
#   }
# }