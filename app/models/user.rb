class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  belongs_to :profile

  has_many :items 
  has_many :requests
  has_many :images
  has_many :holders
  # has_many :holders, through: :sold_tos


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

# def Approved_holders
#   holders.where(status: "Approved")
# end