class AddCodeToConductor < ActiveRecord::Migration[6.1]
  def change
    add_column :conductors, :code, :string
  end
end
