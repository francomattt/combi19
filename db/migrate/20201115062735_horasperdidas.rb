class Horasperdidas < ActiveRecord::Migration[6.0]
  def change
  	add_column :travels, :hora, :string
  
  end
  
end
