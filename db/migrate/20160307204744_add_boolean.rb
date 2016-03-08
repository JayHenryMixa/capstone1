class AddBoolean < ActiveRecord::Migration
  def change
    change_column :holders, :active, :boolean
  end
end
