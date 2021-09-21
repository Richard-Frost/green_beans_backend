class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_table :beans, :bean
  end
end
