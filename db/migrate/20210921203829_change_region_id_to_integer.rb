class ChangeRegionIdToInteger < ActiveRecord::Migration[6.1]
  def change
    remove_column :beans, :region_id
  end
end
