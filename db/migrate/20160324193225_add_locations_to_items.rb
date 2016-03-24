class AddLocationsToItems < ActiveRecord::Migration
  def change
    add_column :items, :location, :string
  end
end
