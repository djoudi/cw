FactoryGirl.define do
	factory :user do
		name 			"Miles S"
		email			"miles@example.com"
		password	"foobar"
		password_confirmation "foobar"
	end
end
