Given /the following goals exist/ do |goal_table|
  goal_table.hashes.each do |goal|
    Goal.create!(goal)
  end
end






# Then("I should see the dashboard page") do                                                                                                 
#   expect(page).to have_content("weekly goal")                                                               
# end 


#Given /^I am on the dashboard page$/ do
 # visit "/goal.1"
#end