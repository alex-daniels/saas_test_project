class ContactMailer < ActionMailer::Base
   default to: "alexdaniels192@gmail.com"
   def contact_email(name, email, body)
      @name = name
      @email = email
      @message = body
      
      mail(from: email, subject: 'Contact Form Message')
   end
end