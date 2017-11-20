Then("I should see the login button") do 
  #find_button('Login').click
  find_link('Login').visible?
end

Then("I should see the logout button") do 
  find_button('Logout').click
  # find_link('Logout').visible?
end

When("I follow login") do
  visit path_to(login_path)
end

When /^I follow the login via facebook$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  Trackruser.new(:email => email, :password => password).save!
  visit "/auth/facebook"
end 

And("facebook authorizes me") do
  visit oauth_callback_path
end

Then("I should see 'Welcome, user!'") do
   # check that page content has user name
   expect(page).to have_content(Trackruser.name) 
end
Given("I am signed in and on the homepage") do
  visit path_to("the homepage")
end

Then("I should see my dashboard") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I follow logout") do
  pending # Write code here that turns the phrase above into concrete actions
end