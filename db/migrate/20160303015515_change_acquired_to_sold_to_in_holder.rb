class ChangeAcquiredToSoldToInHolder < ActiveRecord::Migration
  def change
    rename_column :holders, :acquired_from, :sold_to
  end
end
