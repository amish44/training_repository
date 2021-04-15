module DemoEnterprise
	class Supplier < SitePrism::Page
		set_url "/suppliers"
		element :create_supplier,		'a[href="suppliers/new"]'
		element :search_supplier,		'input[name="search"]'
		element :search_button,			'.search_box_wrapper>#sfBtn_supplier'

		def create_supplier()
			create_supplier.click()
		end

		def search_supplier(supplier)
			search_supplier.set(supplier)
		end

		def search_button()
			search_button.click()
		end
	end
end