require 'calabash-android/calabash_steps'

Then(/^Hello drivebot$/) do
    wait_for_text("Meet Drivebot", timeout: 10)
end

Then(/^Next page$/) do
    perform_action('drag', 75, 25, 50, 50, 5)
end


