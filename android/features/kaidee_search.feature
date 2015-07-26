@kaidee
Feature: Search product in kaidee application

Scenario: search product by keyword
    Given I go to first page
    When I press "actionSearchButton"
       And I search by "iphone"
       And I touch the "ตกลง" text
    Then I wait for the view with id "menuSearch" to appear
       And I wait for progress
       And I should see "iphone"
       And Found data
       And I press view with id "menuSearch"
       And I press "btnClear"

     When I search again by "sumsung"
      Then I wait for the view with id "menuSearch" to appear
        And I wait for progress
        And I should see "sumsung"
        And Found data
