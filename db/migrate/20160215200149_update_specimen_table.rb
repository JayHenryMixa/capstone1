class UpdateSpecimenTable < ActiveRecord::Migration
  def change
    add_column :species, :scientific_name, :string
    add_column :species, :type, :string
  end
end
