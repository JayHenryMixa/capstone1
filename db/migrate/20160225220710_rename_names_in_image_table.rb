class RenameNamesInImageTable < ActiveRecord::Migration
  def change
    rename_column :images, :name, :user_id
  end
end
