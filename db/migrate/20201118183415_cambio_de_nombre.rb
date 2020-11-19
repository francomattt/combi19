class CambioDeNombre < ActiveRecord::Migration[6.0]
 def self.up
    rename_column :insumos, :type, :tipo
  end
end
