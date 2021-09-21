class AddColumnToBeans < ActiveRecord::Migration[6.1]
  def change
    add_column :beans, :region_id, :integer
  end
end
