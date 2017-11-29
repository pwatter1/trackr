Feature: display a main homepage
  
  As a developer
  So that users can see what trackr is
  I want a homepage to display a description about the app
  
Scenario: view home page
  Given I am on the homepage
  Then I should see the welcome message
  Then I should see "Login"
  