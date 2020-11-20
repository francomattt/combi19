class ChangeColumnBusTypeToCombis < ActiveRecord::Migration[6.0]
  def change
    change_column :combis, :bus_type, :integer
  end
end
