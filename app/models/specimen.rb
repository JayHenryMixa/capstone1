class Specimen < ActiveRecord::Base
  self.table_name = "specimens"

  belongs_to :holder
end
