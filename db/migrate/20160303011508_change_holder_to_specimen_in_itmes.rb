class ChangeHolderToSpecimenInItmes < ActiveRecord::Migration
  def change
    rename_column :items, :holder_id, :specimen_id
  end
end
