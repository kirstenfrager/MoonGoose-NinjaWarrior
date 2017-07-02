class ContactMailer < ApplicationMailer

  default from: 'blankcanvas@gmail.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'richardasaville@gmail.com',
             subject: 'New message Richard Saville') do |format|
          format.html { render 'send_contact_emailer' }
          # format.text { render 'contact_mailer' }
        end
  end

end
