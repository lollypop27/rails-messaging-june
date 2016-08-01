Feature: Forgot password
  As a user
  If I have forgotten my password
  I want to be able to reset it


  Scenario: Access forgot password page
    Given I am on the "login" page
    And I click "Forgot your password?"
    Then I should be on the "forgot password" page

  #WIP
  Scenario: Reset password
    Given I am on the "forgot password" page
    And I fill in "Email" with "visitor@email.com"
    And I click button "Send me reset password instructions"
    Then I should be on the "" page
