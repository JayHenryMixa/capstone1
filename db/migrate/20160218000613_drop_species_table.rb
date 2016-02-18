class DropSpeciesTable < ActiveRecord::Migration
  def change
    drop_table(:species)
  end
end
