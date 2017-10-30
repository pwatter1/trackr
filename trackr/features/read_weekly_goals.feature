Feature: read weekly goals
    As a user, 
    So that I can see my running goals, 
    I want my dashboard to display them.
    
Scenario: read weekly goals that arent created
    Given I am on the dashboard page
    And the user has not set weekly goals
    Then I should see a blank dashboard????
    
Scenario: read weekly goals
    Given I am on the dashboard page
    And the user has set the weekly goals
    Then I should see their goal 