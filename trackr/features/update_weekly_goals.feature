Feature: update weekly goals
    As a user, 
    So that I can make changes to my goal, 
    I want to be able to update my weekly goal.
    
Background: goal has been added to data base

  Given the following goals exist:
        | goal                  |
        | 0                     |
        | 0                     |
        | 0                     |
        | 0                     |
        | 0                     |

@omniauth_test     
Scenario: enter and int to update a weekly goal
    Given I am signed in with provider "facebook"
    And I visit the dashboard
    Then I should see "Your weekly goal is 0 miles."
    When I follow "Edit Weekly Goal"
    Then I should be on the Edit Goal Page
    And  I fill in "Goal" with "30"
    And  I press "Update Weekly Goal"
    Then I should see "Your weekly goal is 30 miles."
 
@omniauth_test    
Scenario: enter a non int to update a weekly goal
    Given I am signed in with provider "facebook"
    And I visit the dashboard
    Then I should see "Your weekly goal is 0 miles."
    When I follow "Edit Weekly Goal"
    Then I should be on the Edit Goal Page
    And  I fill in "Goal" with "hi"
    And  I press "Update Weekly Goal"
    Then I should see "Your weekly goal is 0 miles."
