Feature: read runninglog
    As a user, 
    So that I can see my runs, 
    I want my runninglog to display them.
    
Background: runninglog has been added to data base
  
  Given the following runs exist:
        | title             | text      | miles    | rundate
        | Run1              | Good      | 1        | 01/01/2017
        | Run2              | Bad       | 2        | 02/02/2017
        | Run3              | Ok        | 3        | 03/03/2017
        | Run4              | Fun       | 4        | 04/04/2017
        | Run5              | Fell      | 5        | 05/05/2017
    
@omniauth_test  
Scenario: read runninglog
    Given I am signed in with provider "facebook"
    And I am on the runninglog page
    Then I should see "Create a Log"
    And I should see "Listing Logs"