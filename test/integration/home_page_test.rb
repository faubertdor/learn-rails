require "test_helper"

# As a visitor
# I want to visit the home page
# In order to learn more about the website

feature 'Home page' do
  
  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the home page' do
    visit root_path
    page.must_have_content 'Stay in touch'
  end

end
