Feature: read weekly goals
    As a user, 
    So that I can see my running goals, 
    I want my dashboard to display them.
    
Background: goal has been added to data base

  Given the following goals exist:
        | goal                  |
        | 0                     |
        | 0                     |
        | 0                     |
        | 0                     |
        | 0                     |
    
@omniauth_test  
Scenario: read weekly goals
    Given I am signed in with provider "facebook"
    And I am on the dashboard page
    Then I should see "Your weekly goal is 0 miles."