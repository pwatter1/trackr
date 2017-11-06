Then("I should see the dashboard page") do                                                                                                 
  expect(page).to have_content("weekly goal")                                                               
end 


Given /^I am on the dashboard page$/ do
  visit "/goal.1"
end

Then("I should see their goal") do
 
end