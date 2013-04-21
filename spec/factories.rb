FactoryGirl.define do
	factory :user do
		name 			"Miles S"
		email			"miles@example.com"
		password	"foobar"
		password_confirmation "foobar"
	end

	factory :article do
		title "Compiere article 1"
		content "This article is about Compiere.  It doesn't say anything"
	end



end
