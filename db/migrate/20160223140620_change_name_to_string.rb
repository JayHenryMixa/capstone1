class ChangeNameToString < ActiveRecord::Migration
  def change
    change_column :images, :name, :string
  end
end
