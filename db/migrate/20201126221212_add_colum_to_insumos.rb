class AddColumToInsumos < ActiveRecord::Migration[6.0]
  def change
    add_column :insumos, :price, :string
  end
end
