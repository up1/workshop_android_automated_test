require 'calabash-android/calabash_steps'

Given(/^Show welcome page$/) do
     steps %Q{
        Then I wait for the view with id "fouth_slide" to appear
          And I press view with id "fouth_slide"
     }
end

When(/^I need to register$/) do
    steps %Q{
        Then I press view with id "regis"
     }
end

Then(/^I see register form$/) do
    steps %Q{
        Then I enter text "somkiat.p@gmail.com" into field with id "email"
         And  I enter text "111111" into field with id "password"
         And  I enter text "111111" into field with id "confirm_password"
         And I press view with id "confirm"
         And I see "เพิ่มค่าใช้จ่าย"
    }
end

Then(/^Choose day 20th from calendar$/) do
        tap_when_element_exists("textview tag:'20'")
end

Then(/^Validate close date$/) do
        if query("textview id:'close_date_label' text:'20'").length != 1
            fail("Close date not valid")
        end
end



