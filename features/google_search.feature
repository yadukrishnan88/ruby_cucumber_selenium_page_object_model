Feature: Users can perform web search from Google home page

  Scenario Outline: As a user I launch "https://www.google.com" and search for a phrase
    Given I launch Google home page
    When I search for "<search_text>"
    Then I should see the results
    Examples:
      | search_text |
      | selenium    |
    Scenario Outline: As a user I launch Google home page and do a video search
      Given I launch Google home page
      When I search for "<video_search_tag>"
      And I click on the link for videos
      Then I should see the results
      Examples:
      |video_search_tag|
      |cucumber
   Scenario Outline : As a user I launch Google home page and do an image search 
      Given I launch Google home page
      When I search for "<search_tag>"
      And I click on images link on next page
      Then I should see the image search results
      Examples:
      |search_tag|
      |cucumber|
