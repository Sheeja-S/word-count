require('capybara/rspec')
require('./app')
Capybara.app = Sinatra:: Application
set(:show_exceptions, false)

describe('Count the number of target words', {:type => :feature}) do
  it('takes the word input and finds the number of occurances in the text input') do
    visit('/')
    fill_in('text', :with => "hey hey everyone")
    fill_in('target', :with => "hey")
    click_button("Show target count")
    expect(page).to have_content(2)
    save_and_open_page
  end
end
