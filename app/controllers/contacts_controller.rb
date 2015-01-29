class ContactsController < ApplicationController

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to '/#thanksModal', notice: "Thank you for contacting me. I will be in touch shortly."
		else
			render 'static_pages/index'
		end
	end

end

private

def contact_params
	params.require(:contact).permit(:name, :email, :content)
end