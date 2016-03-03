class AddStatusToHolder < ActiveRecord::Migration
  def change
    add_column :holders, :status, :string
  end
end
