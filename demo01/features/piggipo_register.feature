
Feature: Success register 

    @group01
    Scenario: View register page for new user
        Given Show welcome page
        When I need to register
        Then I see register form

    @group02
    Scenario: Add new cards
        When I press "button1"
           And I press view with id "add_transaction"
           And I press view with id "add_card"
           And I touch the "AEON" text
           And I enter text "my card 01" into field with id "card_name"
           And I enter text "1000" into field with id "card_limit"
           And I press view with id "close_keyboard"
           And I press view with id "card_digit"
           And I enter text "1234" into field with id "card_digit"
           And I press view with id "close_keyboard"
           And I press view with id "close_date_layout"
           And I press view with id "close_date"
           And Choose day 20th from calendar
           And Validate close date
           And I press view with id "icon_done"
