Given("I am on the home page") do
  visit root_path
end

Then("I should see the {string}") do |string|
  expect(page).to have_content(string)
end