require 'spec_helper'

describe "User pages" do
		
	subject { page }

	describe "signin page" do
		before { visit 'signin' }

		it { should have_selector('h1', 		text: 'Sign in') }
		it { should have_selector('title',	text: full_title('Sign in')) }
	end
end


