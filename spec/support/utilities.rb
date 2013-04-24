include ApplicationHelper

#the ApplicationHelper has a thing with page titles. It's currently
#empty, because I think I was using a different method to join the 
#page titles 

def sign_in(user)
	visit signin_path
	fill_in "Email",			with: user.email
	fill_in "Password",		with: user.password
	click_button "Sign in"
	# sign in when not using Capybara as well
	cookies[:remember_token] = user.remember_token
end
		
