require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock_paper_scissors test',{:type => :feature}) do
  it ("processes the user entry and returns false") do
    visit ('/')
    select('rock', :from => 'hand_one')
    click_button('Play!')
    expect(page).to have_content (true)
  end
end
