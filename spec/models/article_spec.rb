require 'spec_helper'

describe Article do

	let(:user) { FactoryGirl.create(:user) }
	#This doesn't test whether the user is signed in or not.  I think the reason is because it doesn't use the create action in the controller, it just creates one like I would through the console.  The signed_in? user requirement is tested in the articl_pages_spec

	before do
		#apparently something here is wrong
		@article = Article.new(title: "Compiere Article X", content: "blah")
	end

	subject { @article }

	it { should respond_to(:title) }
	it { should respond_to(:content) }

	it { should be_valid }

	describe "with blank title" do
		before { @article.title = " " }
		it { should_not be_valid }
	end

	describe "with blank content" do
		before { @article.content = " " }
		it { should_not be_valid }
	end


end
