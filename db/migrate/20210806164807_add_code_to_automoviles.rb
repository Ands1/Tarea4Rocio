class AddCodeToAutomoviles < ActiveRecord::Migration[6.1]
  def change
    add_column :automoviles, :code, :string
  end
end
