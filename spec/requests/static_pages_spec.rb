require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the h1 'Compiere Wiki'" do
			#visit root_path
			visit '/static_pages/home'
			page.should have_selector('h1', text: 'Welcome to the ONPS Compiere Wiki')
		end

		it "should have the title" do
			#visit root_path
			visit '/static_pages/home'
			page.should have_selector('title', 
		text: "ONPS Compiere Wiki- Compiere Knowledge, For the Benefit of All Mankind.")
		end
	end

	describe "Help page" do
		
		it "should have the h1 'Help'" do
			#visit help_path
			visit '/static_pages/help'
			page.should have_selector('h1', text: 'Help')
		end

		it "should have the title" do
			#visit help_path
			visit '/static_pages/help'
			page.should have_selector('title', 
		text: "ONPS Compiere Wiki- Compiere Knowledge, For the Benefit of All Mankind.")
		end
	end


end


