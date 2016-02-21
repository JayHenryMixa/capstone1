class ChangeImageTable < ActiveRecord::Migration
  def change
    add_column(:images, :url, :text ) 
    add_column :images, :imagable_id, :integer
    add_column :images, :imagable_type, :text
  end
end
