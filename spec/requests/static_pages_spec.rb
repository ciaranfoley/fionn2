require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end
		it "should have a title of 'Home Page'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => " | Home Page")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
		it "should have the title of 'Help page'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => " | Help Page")
		end
	end

	describe "About Page" do
		it "should have the content 'About us'" do
			visit '/static_pages/about'
			page.should have_content('About')
		end
		it "should have title of 'About us'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => " | About us")
		end
	end
end