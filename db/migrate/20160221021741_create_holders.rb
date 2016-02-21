class CreateHolders < ActiveRecord::Migration
  def change
    create_table :holders do |t|
      t.integer :user_id
      t.integer :specimen_id
      t.string :date_acquired
      t.string :acquired_from

      t.timestamps null: false
    end
  end
end
