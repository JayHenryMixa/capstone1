class RemoveSoldToIdFromHolders < ActiveRecord::Migration
  def change
    remove_column :holders, :sold_to_id
  end
end
