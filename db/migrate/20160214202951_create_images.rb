class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id 
      t.timestamps null: true
    end
  end
end
