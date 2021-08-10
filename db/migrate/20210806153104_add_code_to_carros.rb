class AddCodeToCarros < ActiveRecord::Migration[6.1]
  def change
    add_column :carros, :code, :string
  end
end
