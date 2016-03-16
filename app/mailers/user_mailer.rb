class UserMailer < ApplicationMailer


  def welcome(user)
    @user = user
    @user = user.first_name
    mail to: @user.email, subject: "Welcome to Fragit"
  end
end
