class RemoveBeansFromFarmers < ActiveRecord::Migration[6.1]
  def change
    remove_column :farmers, :beans_id, :integer
  end
end
