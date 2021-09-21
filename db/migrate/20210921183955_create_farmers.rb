class CreateFarmers < ActiveRecord::Migration[6.1]
  def change
    create_table :farmers do |t|
      t.string :name
      t.integer :region_id
      t.integer :beans_id

      t.timestamps
    end
  end
end
