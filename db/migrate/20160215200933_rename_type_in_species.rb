class RenameTypeInSpecies < ActiveRecord::Migration
  def change
    rename_column :species, :type, :designation
  end
end
