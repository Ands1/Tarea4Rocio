class CreateConductores < ActiveRecord::Migration[6.1]
  def change
    create_table :conductores do |t|
      t.string :name

      t.timestamps
    end
  end
end
