require 'calabash-android/calabash_steps'

When(/^I go to first page$/) do
    steps %Q{
        And I press "btnNext"
        And I press "btnClose"
        And I press "btnClose"
    }
end

When(/^I search by "(.*?)"$/) do |keyword|
    enter_text("* id:'search_src_text'", keyword)
    press_enter_button
end

When(/^I search again by "(.*?)"$/) do |keyword|
    enter_text("* id:'edtSearchItem'", keyword)
    press_enter_button
end

Then(/^Found data$/) do
    if query("* id:'txtTitle'").length == 1
        fail("Data not found")
    end
end
