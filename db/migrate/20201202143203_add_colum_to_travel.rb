class AddColumToTravel < ActiveRecord::Migration[6.0]
  def change
    add_column :travels, :price, :float
    
  end
end
