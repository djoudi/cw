require 'spec_helper'

describe "ArticlePages" do

	subject { page }

	let(:user) { FactoryGirl.create(:user) }
	before { sign_in user}

	describe "new article page" do
		before { visit new_article_path }

		it { should have_selector('h1', 		text: 'New Article') }
		it { should have_selector('title',	text: 'New Article') }
	end

	describe "article creation" do
		before { visit new_article_path }

		describe "with invalid info" do

			it "should not create an article" do
				expect { click_button "Create Article"}.not_to change(Article, :count)
			end

			#for better test coverage, include a scenario where i fill in title
			#and not content, and another with the reverse scenario

			describe "error messages" do
				before { click_button "Create Article" }
				it { should have_content('error') }
			end
		end

		describe "with valid info" do
			
			before { fill_in 'article_title', with: "rspec test title" }
			before { fill_in 'article_content', with: "rspec test content" }
			it "should create an Article" do
				expect { click_button "Create Article" }.to change(Article, :count).by(1)
			end
		end
	end

#	describe "article editing" do
#		before { FactoryGirl.create(:article) }

#		describe "as signed in user" do
#			before { visit edit_article_path(:article) }

			
























end
