class UserMailer < ApplicationMailer
  default from: "no-reply@branchew.com"
  
  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email,
         subject: "Mailing List Jean Dorancy")
  end
  
end
