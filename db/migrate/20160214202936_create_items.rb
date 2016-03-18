class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.string :price
      t.string :location
      t.string :shipping
      t.integer :holder_id
      t.integer :specimen_id

      t.timestamps null: true
    end
  end
end
