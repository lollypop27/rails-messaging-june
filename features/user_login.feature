Feature: Login
  As a user
  To be able to access my account
  I have to be able to login

  Background:
    Given I am on the login page
    And the following users exist
      | name    | email              | password |
      | visitor | visitor@email.com  | password |

  Scenario: Access the login page
    Given I am on the home page
    And I click "Login"
    Then I should be on the login page

  Scenario Outline:
    Given I am on the login page
    And I fill in <email>
    And I fill in <password>
    And I click button "Login"
    And I should see "Signed in successfully."
    Then I should be on the home page
  Examples:
    | email     | visitor@email.com |
    | password  | password          |

  Scenario: Log in a user
    And I should see "Signed in successfully."

  Scenario: Log in with wrong email or password or left blank
    And I should see "Invalid <email> or password."
