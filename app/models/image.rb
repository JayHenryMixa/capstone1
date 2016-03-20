class Image < ActiveRecord::Base

  belongs_to :imagable, polymorphic: true
  belongs_to :user
  
  validates :url, presence: true

  def user_full_name
    user.first_name + " " + user.last_name
  end

end
