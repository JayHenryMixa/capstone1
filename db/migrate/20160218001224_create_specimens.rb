class CreateSpecimens < ActiveRecord::Migration
  def change
    create_table :specimens do |t|
      t.string :name
      t.string :scientific_name
      t.string :designation

      t.timestamps null: false
    end
  end
end
