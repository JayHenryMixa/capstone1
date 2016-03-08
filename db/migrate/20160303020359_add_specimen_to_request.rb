class AddSpecimenToRequest < ActiveRecord::Migration
  def change
    rename_column :requests, :image_id, :specimen_id
  end
end
