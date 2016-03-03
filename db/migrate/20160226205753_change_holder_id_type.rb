class ChangeHolderIdType < ActiveRecord::Migration
  def change
    change_column :items, :holder_id, :integer
  end
end
