require 'spec_helper'

describe "ArticlePages" do

	subject { page }

	describe "new article page" do
		before { visit '/articles/new' }

		it { should have_selector('h1', 		text: 'New Article') }
		it { should have_selector('title',	text: 'New Article') }

	end





end
