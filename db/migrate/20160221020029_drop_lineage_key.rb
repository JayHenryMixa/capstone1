class DropLineageKey < ActiveRecord::Migration
  def change
    drop_table(:lineage_keys)
  end
end
