Given(/^I launch Google home page$/) do
  visit(GoogleHomePage)
end

When(/^I search for "([^"]*)"$/) do |search_term|
  on(GoogleHomePage).web_search(search_term)
end

Then(/^I should see the results$/) do
  puts "hello"
end