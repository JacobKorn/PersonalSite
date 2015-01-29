class ContactsController < ApplicationController

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to '/#thanksModal'
		else
			@contactModal = "farts"
			render 'static_pages/index'
			p @contactModal
		end
	end

end

private

def contact_params
	params.require(:contact).permit(:name, :email, :content)
end