Feature: Forgot password
  As a user
  If I have forgotten my password
  I want to be able to reset it

  Scenario: Access forgot password page
    Given I am on the login page
    And I click "Forgot your password?"
    Then I should be on the forgot password page
