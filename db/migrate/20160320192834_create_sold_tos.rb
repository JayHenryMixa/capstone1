class CreateSoldTos < ActiveRecord::Migration
  def change
    create_table :sold_tos do |t|
      t.integer :holder_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
