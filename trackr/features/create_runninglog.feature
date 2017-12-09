Feature: create runninglog
    As a user, 
    So that I can add my runs, 
    I want my to be able to create new runs.
    
Background: runninglog has been added to data base

  Given the following runs exist:
        | title             | text      | miles    | rundate
        | Run1              | Good      | 1        | 01/01/2017
        | Run2              | Bad       | 2        | 02/02/2017
        | Run3              | Ok        | 3        | 03/03/2017
        | Run4              | Fun       | 4        | 04/04/2017
        | Run5              | Fell      | 5        | 05/05/2017
    
@omniauth_test  
Scenario: create runninglog
    Given I am signed in with provider "facebook"
    And I am on the runninglog page
    When I follow "Create a Log"
    Then I should be on the Create Log Page
    And  I fill in "Title" with "Run6"
    And  I fill in "Text" with "Horrible run."
    And  I fill in "Distance" with "6"
    And  I fill in "Run Date" with "06/06/2017"
    And  I press "Save Changes"
    Then I should see "Run6"