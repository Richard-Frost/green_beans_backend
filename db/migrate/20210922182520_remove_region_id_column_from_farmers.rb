class RemoveRegionIdColumnFromFarmers < ActiveRecord::Migration[6.1]
  def change
    remove_column :farmers, :region_id
  end
end
