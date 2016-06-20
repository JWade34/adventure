class ExampleMailer < ActionMailer::Base
  default from: "Adam@AdventureMarketing.org"

  def send_email(user)
    @user = user
    mail(to: @user.email, subject: 'Lets start the ADventure!')
  end

end
