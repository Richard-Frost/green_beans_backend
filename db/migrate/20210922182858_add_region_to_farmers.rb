class AddRegionToFarmers < ActiveRecord::Migration[6.1]
  def change
    add_column :farmers, :region, :string
  end
end
