class UserMailer < ApplicationMailer

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
     :address => "smtp.gmail.com",
     :port => 587,
     :domain => "gmail.com",
     :user_name => "alumnuts@gmail.com",
     :password => "alumnuts_dasha",
     :authentication => "plain",
     :enable_starttls_auto => true
  }
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: '100 day survey')
  end
end
