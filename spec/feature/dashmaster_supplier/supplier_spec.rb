require 'spec_helper'
require 'site_prism'
require 'pages/home.rb'
require 'pages/login.rb'
require 'pages/supplier.rb'

feature 'Coupa test', type: :feature do
	include DemoEnterprise

	scenario 'Visit coupa' do
		loginpage = DemoEnterprise::Login.new
		loginpage.load
		loginpage.login_to_app "trainxuser", "Temp@1234"
		homepage = DemoEnterprise::Home.new
		homepage.load
		homepage.sign_out()

  #   @welcomepage.flight_details "2","London","May","4","Paris","May","12","First","Blue Skies Airlines"
  #   @selectflightpage = Demoauto::SelectFlightPage.new
  #   @selectflightpage.load
  #   @selectflightpage.select_fight
  #   @bookflightpage=Demoauto::BookFlightPage.new
  #   @bookflightpage.load
  #   @bookflightpage.book_flight

		# find(:xpath, ".//img[@src='/images/forms/Logout.gif']").click
  end
end