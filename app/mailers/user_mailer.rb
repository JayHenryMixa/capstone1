class UserMailer < ApplicationMailer


  def welcome(user)
    @user = user
    @url = localhost:3000
    mail(to: @user.email, subject: Welcome to Fragit)
  end
end
