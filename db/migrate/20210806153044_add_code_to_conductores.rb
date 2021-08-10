class AddCodeToConductores < ActiveRecord::Migration[6.1]
  def change
    add_column :conductores, :code, :string
  end
end
