class Request < ActiveRecord::Base

  belongs_to :user
  belongs_to :specimen
  has_many :images, as: :imagable

  def user_full_name
    user.first_name + " " + user.last_name
  end

  def get_first_image
    if images.first 
      images.first.url 
    else
      Image.first.url
    end
  end

end
