class Specimen < ActiveRecord::Base
  self.table_name = "specimens"

  has_many :holders
  has_many :users, through: :holders 
  has_many :items
end
