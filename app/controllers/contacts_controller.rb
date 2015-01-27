class ContactsController < ApplicationController

	def create
		@contact = Contact.new(contact_params)
	end

end
