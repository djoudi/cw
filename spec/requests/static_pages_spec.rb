require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "ONPS Compiere Wiki- Compiere Knowledge, For the Benefit of All Mankind" }

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
		text: "#{base_title} | Home")
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
		text: "#{base_title} | Help")
		end
	end


end


