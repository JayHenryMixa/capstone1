class ChangeUserIdTypeInImages < ActiveRecord::Migration
  def change
    change_column :images, :user_id, :integer
  end
end
