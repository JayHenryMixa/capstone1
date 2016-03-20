class SoldTo < ActiveRecord::Base

  belongs_to :user
  belongs_to :holder

  has_many :users, through: :sold_tos
end
