class ChangeFileToNameInImages < ActiveRecord::Migration
  def change
    rename_column :images, :file, :name
  end
end
