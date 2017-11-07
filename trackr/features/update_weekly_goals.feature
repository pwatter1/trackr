Feature: update weekly goals
    As a user, 
    So that I can make changes to my goal, 
    I want to be able to update my weekly goal.
    
Background: goal has been added to data base

  Given the following goals exist:
  | goal                   |
  | 200                    |
  | 100                    |
    
Scenario: update a weekly goal
    Given I am on the dashboard page
    #And the user has set the weekly goals
    #Then I should be able to update the weekly goals
    
# Scenario: update when no goal has been created
#     Given I am on the dashboard page
#     And the user has not set the weekly goals
#     Then I should not be able to change the weekly goals 