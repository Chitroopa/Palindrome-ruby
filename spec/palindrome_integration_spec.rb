require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('palindrome',{:type => :feature}) do
  it('processes user entry and returns whether the string is palindrome or not') do
    visit('/')
    fill_in('word', :with => 'Never odd or even')
    click_button('Check Palindrome')
    expect(page).to have_content('You have a palindrome!')
  end
end
