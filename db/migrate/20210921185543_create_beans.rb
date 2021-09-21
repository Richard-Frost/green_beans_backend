class CreateBeans < ActiveRecord::Migration[6.1]
  def change
    create_table :beans do |t|
      t.string :name
      t.integer :farmer_id
      t.string :region_integer

      t.timestamps
    end
  end
end
