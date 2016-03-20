class ItemMailer < ApplicationMailer

  def new_item(item)
    @item = item.id

    mail(to: @user.email, subject: "Thank You For Posting with Fragit")
  end 
    
end
