Given /the following runs exist/ do |runninglog_table|
  runninglog_table.hashes.each do |run|
    Runninglog.create!(run)
  end
end


Then("I should see not {string}") do |string|
  page.should have_no_content(string)
end