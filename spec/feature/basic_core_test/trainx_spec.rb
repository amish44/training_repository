require 'capybara/rspec'
require 'webdrivers'

feature 'TrainX specs', type: :feature do
	
	Capybara.app_host = 'https://dashmaster-r30-analytics.coupadev.com'
	Capybara.default_driver = :selenium_chrome

	scenario 'Visit trainx' do
		visit '/'
		fill_in 'user_login', with: 'trainxuser'
		fill_in 'user_password', with: 'Temp@1234'
		find('#login_button').send_keys :enter 
		expect(page.title).to have_content('Coupa Home')
		find('#my_account').hover
		click_link('Sign Out')
		Capybara.current_session.driver.quit
	end

	scenario 'scenario2' do
		visit 'https://google.com'
		Capybara.current_session.driver.quit
	end
end