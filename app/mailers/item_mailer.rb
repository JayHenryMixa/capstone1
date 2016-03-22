class ItemMailer < ApplicationMailer

  def new_item(item)
    @item = item

    mail(to: @item.user.email, subject: "Thank You For Posting with Fragit")
  end 
    
end
