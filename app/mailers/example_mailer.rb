class ExampleMailer < ActionMailer::Base
  default from: "Adam@AdventureMarketing.org"

  def send_email(user)
    @user = user
    mail(to: @user.email, subject: 'Lets start the ADventure!')
  end

  def contact_us(user)
    @user = user
    mail(to: 'justinwmckelvey@gmail.com', subject: 'A New Contact Form has been submitted')
  end

end
