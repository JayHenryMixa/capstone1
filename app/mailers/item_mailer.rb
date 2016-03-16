class ItemMailer < ApplicationMailer

  def new_item(item)
    @item = item
    @item = item.description

    mail(to: @item.user.email, subject: "Thank You For Posting with Fragit")
  end
    
end
