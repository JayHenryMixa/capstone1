class ApplicationMailer < ActionMailer::Base
  default from: "jmixa6@gmail.com.com"
  layout 'mailer'

  def new_item(item)
    @item = item.id

    mail(to: @user.email, subject: "Thank You For Posting with Fragit")
  end 

end
