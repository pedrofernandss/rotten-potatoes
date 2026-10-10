Given('I am on the RottenPotatoes home page') do
  visit "/movies"
end

When('I follow {string}') do |link_text|
  click_link(link_text)
end

When('I fill in {string} with {string}') do |field, value|
  fill_in field, with: value
end

When('I select {string} from {string}') do |value, field|
  select value, from: field
end

When('I press {string}') do |button_text|
  click_button(button_text)
end

Then('I should be on the RottenPotatoes home page') do
  expect(page).to have_current_path(movies_path)
end

Then('I should be on the Create New Movie page') do
  expect(page).to have_current_path(new_movie_path)
end

Then('I should see {string} before {string}') do |first_movie, second_movie|
  first_position = page.text.index(first_movie)
  second_position = page.text.index(second_movie)

  expect(first_position).not_to be_nil
  expect(second_position).not_to be_nil
  expect(first_position).to be < second_position
end

Then('I should see {string}') do |text|
  expect(page).to have_text(text)
end