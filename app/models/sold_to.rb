class SoldTo < ActiveRecord::Base

  belongs_to :holder
  belongs_to :user

  def user_full_name
    user.first_name + " " + user.last_name
  end
  
end
