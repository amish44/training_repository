module DemoEnterprise
	class Login < SitePrism::Page
		set_url "/"
		element :username_element,		'#user_login'
		element :password_element,		'#user_password'
		element :submit_element,		'#login_button'

		def login_to_app(username, password)
			username_element.set(username)
			password_element.set(password)
			submit_element.click
		end
	end
end