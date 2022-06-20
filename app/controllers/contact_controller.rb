class ContactController < ApplicationController
  prepend_before_action :check_captcha, only: :create

  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      redirect_to root_path
      flash.notice = "Message sent, we will reply shortly"
      # render json: {message: "Email sent successfully"}
    else
      redirect_to root_path
      flash.alert = "Message unable to send, please email: designed.by.bond@gmail.com"
      # render json: @contact.errors
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :phone, :message)
  end

  def check_captcha
    unless verify_recaptcha
      redirect_to root_path
      flash.alert = "Message unable to send, please email: designed.by.bond@gmail.com"
    end
  end
end
