  Given(/^the following users exist$/) do |table|
    table.hashes.each do |user|
    User.create(name: user[:name],
                email: user[:email],
                password: user[:password])
    end
  end

Given(/^I am on the home page$/) do
  visit root_path
end

Given(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the login page$/) do
  expect(page.current_path).to eq '/users/sign_in'
end

Given(/^I am on the login page$/) do
  visit '/users/sign_in'
end

Given(/^I fill in password$/) do
  fill_in('Password', with: 'P@ssw0rd')
end

Given(/^I fill in <password>$/) do
  fill_in('Password', with: 'P@ssw0rd')
end

Given(/^I click button "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I should be on the home page$/) do
  visit root_path
end

Given(/^I should see "([^"]*)"$/) do |content|
  # page.should have_content('Signed in successfully.')
end
