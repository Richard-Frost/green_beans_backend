class ChangeBeanColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_table :bean, :beans
  end
end
