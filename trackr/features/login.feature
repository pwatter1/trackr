Feature: User login
    As a user
    so that I can have a personalized experience
    I want to be able to log in to the site

    # Scenario: bad access
    #   Given I am on the homepage
    #   And I am not logged in
    #   When I try to access my goals
    #   Then I should see the homepage
    #   And I should see the login button

    Scenario: login
      Given I am on the homepage
      Then I should see "Welcome to trackr"
      When I follow "Login"
      And facebook authorizes me
      Then I should see "Welcome, "
      
    # Scenario: Checking login status
    #   Given I am signed in and on the homepage
    #   Then I should see "Welcome, user!"

    # Scenario: logout
    #   Given I am on the homepage
    #   Then I should see the logout button
    #   # When I follow the logout button
    #   Then I should be on the homepage