class ChangeWebcamToHolder < ActiveRecord::Migration
  def change
    rename_column :items, :webcam_source, :holder_id  
  end
end
