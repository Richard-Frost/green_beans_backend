class FixCoulumnNameInBeans < ActiveRecord::Migration[6.1]
  def change
    rename_column :beans , :region_integer, :region_id
  end
end
