class AddColumInsumo < ActiveRecord::Migration[6.0]
  def change
      add_column :insumos, :deleted_at, :date
  end
end
