require 'calabash-android/calabash_steps'


Given(/^First time to open app$/) do

end

When(/^I see detail at next page$/) do
    perform_action('drag', 75, 25, 50, 50, 5)
end

Then(/^I see verify your device$/) do
    steps %Q{
        And I see "Verify your device"
    }
end