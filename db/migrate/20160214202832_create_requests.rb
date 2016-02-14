class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :description
      t.string :price
      t.string :location
      t.string :shipping

      t.timestamps null: true
    end
  end
end
