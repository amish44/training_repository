module DemoEnterprise
	class Home < SitePrism::Page
		set_url "/user/home"

		element :supplier_element,		'a[href="/suppliers"]'
		element :expense_element, 		'a[href="/expenses"]'
		element :myaccount_element,		'#my_account'

		def navigate_to_supplier
			supplier_element.click
		end

		def sign_out
			myaccount_element.click
		end
	end
end