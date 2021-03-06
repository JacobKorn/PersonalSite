class ContactsController < ApplicationController

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to root_path( thanksModal: true)
		else
			@contactModal = true
			render 'static_pages/index'
			p @contactModal
		end
	end

end

private

def contact_params
	params.require(:contact).permit(:name, :email, :content)
end