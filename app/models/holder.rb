class Holder < ActiveRecord::Base
  belongs_to :user
  belongs_to :specimen
  has_many :items


  def user_full_name
    user.first_name + " " + user.last_name
  end




end

