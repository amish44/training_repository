require 'capybara/rspec'
require 'webdrivers'

feature 'TrainX specs', type: :feature do
	
	Capybara.app_host = 'https://www.phptravels.net/admin/'
	Capybara.default_driver = :selenium_chrome
	


	scenario 'Visit trainx' do
		visit '/'
		fill_in 'label>input[name="email"]', with: 'admin@phptravels.com'
		fill_in 'label>input[name="password"]', with: 'demoadmin'
		find('button[type="submit"]').send_keys :enter 
		#expect(page.title).to have_content('Coupa Home')
		#find('#my_account').hover
		#click_link('Sign Out')
		Capybara.current_session.driver.quit
	end
end


# ^ - After
# $ - before
# * - inbetween anywhere