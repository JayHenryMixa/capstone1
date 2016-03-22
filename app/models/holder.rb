class Holder < ActiveRecord::Base
  belongs_to :user
  belongs_to :specimen
  has_many :items
  has_many :sold_tos

  

  def user_full_name
    user.first_name + " " + user.last_name
  end




end

