require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

def capybara_server_setup
	if ENV['DRIVER'] =='chrome' 
  		Capybara.default_driver = :selenium_chrome
	else
   		Capybara.default_driver = :selenium_firefox
	end 
	Capybara.configure do |config|
  		config.app_host = 'http://dashmaster-r30-analytics.coupadev.com'
	end
end