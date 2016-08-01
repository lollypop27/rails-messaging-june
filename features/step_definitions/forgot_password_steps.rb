# Then(/^I should be on the forgot password page$/) do
#   expect(page.current_path).to eq new_user_password_path
# end

Given(/^I am on the "([^"]*)" page$/) do |pagename|
  visit user_session_path
end

Then(/^I should be on the "([^"]*)" page$/) do |pagename|
  expect(page.current_path).to eq new_user_password_path
end
