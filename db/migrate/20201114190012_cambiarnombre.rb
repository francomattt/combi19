class Cambiarnombre < ActiveRecord::Migration[6.0]
  def change
     rename_column :ways, :end, :end_way
  end
end
