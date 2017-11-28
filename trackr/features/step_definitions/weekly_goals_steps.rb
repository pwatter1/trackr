Given /the following goals exist/ do |goal_table|
  goal_table.hashes.each do |goal|
    Goal.create!(goal)
  end
end

Given("I visit the dashboard") do
  visit "/goals"
end