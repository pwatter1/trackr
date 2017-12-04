Feature: User login
    As a user
    so that I can have a personalized experience
    I want to be able to log in to the site

    Background:
      Given the following goals exist:
        | goal                  |
        | 0                     |
        | 0                     |
        | 0                     |
        | 0                     |
        | 0                     |
    
    @omniauth_test
    Scenario: a user can login to facebook
      Given I am signed in with provider "facebook"
      Then I should see "facebookuser"
      
    
    @omniauth_test
    Scenario: a user logs out
      Given I am signed in with provider "facebook"
      And I should see "facebookuser"
      And I follow "Log Out"
      Then I should see "Login"
      
