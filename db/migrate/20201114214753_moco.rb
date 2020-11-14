class Moco < ActiveRecord::Migration[6.0]
  def change
  	add_column :combis, :deleted_at, :date
  end
end
