Feature:: Add multiple card

    @group03
    Scenario Outline: Add new cards
        When I press "button1"
           And I press view with id "add_transaction"
           And I press view with id "add_card"
           And I touch the "<bank>" text
           And I enter text "my card 01" into field with id "card_name"
           And I enter text "1000" into field with id "card_limit"
           And I press view with id "close_keyboard"
           And I press view with id "card_digit"
           And I enter text "1234" into field with id "card_digit"
           And I press view with id "close_keyboard"
           And I wait for 2 seconds
           And I press view with id "close_date"
           And Choose day 20th from calendar
           And I wait for 2 seconds
           And Validate close date
           And I press view with id "icon_done"
         Then I see "<bank>"

        Examples:
        | bank     |
        | AEON   |
        | KBANK |
        | SCB     |

