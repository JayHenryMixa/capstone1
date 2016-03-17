class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_image, :text
  end
end
