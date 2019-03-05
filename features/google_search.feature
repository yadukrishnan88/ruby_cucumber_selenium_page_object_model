Feature: Users can perform web search from Google home page

  Background:A user is launching Google home page
    Given I launch Google home page

  Scenario Outline: As a user I launch Google home page and search for a phrase
    When I search for "<search_text>"
    Then I should see the results
    Examples:
      | search_text |
      | selenium    |
      | ruby        |
      | cucumber    |


