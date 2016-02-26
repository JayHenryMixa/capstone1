class AddImageIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :image_id, :integer
  end
end
