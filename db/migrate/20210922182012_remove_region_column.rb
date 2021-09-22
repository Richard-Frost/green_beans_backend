class RemoveRegionColumn < ActiveRecord::Migration[6.1]
  def change
    drop_table :regions
  end
end
