class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :file
      t.timestamps null: true
    end
  end
end
