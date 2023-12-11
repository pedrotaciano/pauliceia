Feature: User Authentication

  Scenario: User Registration
    Given the user is on the registration page
    When they enter valid registration details
    And they agree with terms of use
    And they submit the registration form
    Then they should not get errors

  Scenario: User Login
    Given the user is on the login page
    When they enter valid login credentials
    And they submit the login form
    Then they should be redirected to map
