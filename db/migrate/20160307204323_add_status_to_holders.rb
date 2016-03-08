class AddStatusToHolders < ActiveRecord::Migration
  def change
    add_column :holders, :active, :string
  end
end
