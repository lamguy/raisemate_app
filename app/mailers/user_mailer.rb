class UserMailer < ActionMailer::Base
  default :from => "no-reply@raisemate.com"
  
  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.user_email,
         :subject => "Welcome to My Awesome Site")
  end
  
end
