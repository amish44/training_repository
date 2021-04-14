require 'capybara/rspec'
require 'webdrivers'

feature 'TrainX tests', type: :feature do
	
	Capybara.app_host = 'https://dashmaster-r30-analytics.coupadev.com'
	Capybara.default_driver = :selenium_chrome

	scenario 'Visit trainx' do
		visit '/'
		fill_in 'user_login', with: 'trainxuser'
		fill_in 'user_password', with: 'Temp@1234'
		find('#login_button').send_keys :enter 
		expect(page.title).to have_content('Coupa Home')
		click_link('trainx')
		click_link('Sign Out')
	end

	scenario 'scenario2' do
		visit 'https://google.com'
	end
end