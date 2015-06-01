require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application


describe('the shipping path for parcels', {:type => :feature}) do
  it('returns cost for shipping parcels') do
  visit('/')
  fill_in('length', :with => 2)
  fill_in('width',  :with => 6)
  fill_in('height', :with => 3)
  fill_in('weight', :with => 10)
  fill_in('distance', :with => 1)
  fill_in('speed', :with => 'expedited')
  click_button('Ship It!')
  expect(page).to have_content(30)
  end
end
