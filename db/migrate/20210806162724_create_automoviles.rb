class CreateAutomoviles < ActiveRecord::Migration[6.1]
  def change
    create_table :automoviles do |t|
      t.integer :model
      t.string :brand
      t.integer :driverid
      t.string :alias

      t.timestamps
    end
  end
end
