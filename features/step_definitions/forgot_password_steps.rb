Then(/^I should be on the forgot password page$/) do
  expect(page.current_path).to eq new_user_password_path
end
