Feature: User login
    As a user
    so that I can have a personalized experience
    I want to be able to log in to the site

    Scenario: login
      Given I am on the homepage
      Then I should see the login button
      When I follow the login via facebook
      And facebook authorizes me
      Then I should see my dashboard
      
    Scenario: Checking login status
        Given I am signed in and on the homepage
        Then I should see "Welcome, user!"

    Scenario: logout
      Given I am on the homepage
      Then I should see the logout button
      # When I follow the logout button
      Then I should be on the homepage