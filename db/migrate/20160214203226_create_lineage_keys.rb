class CreateLineageKeys < ActiveRecord::Migration
  def change
    create_table :lineage_keys do |t|
      t.string :date_acquired
      t.string :acquired_from
      t.string :number_of_divisions

      t.timestamps null: true
    end
  end
end
