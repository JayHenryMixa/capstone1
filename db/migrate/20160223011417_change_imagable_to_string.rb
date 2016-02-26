class ChangeImagableToString < ActiveRecord::Migration
  def change
    change_column :images, :imagable_type, :string
  end
end
