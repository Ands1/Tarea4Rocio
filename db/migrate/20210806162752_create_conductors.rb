class CreateConductors < ActiveRecord::Migration[6.1]
  def change
    create_table :conductors do |t|
      t.string :name

      t.timestamps
    end
  end
end
