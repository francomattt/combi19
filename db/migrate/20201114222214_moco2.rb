class Moco2 < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :deleted_at, :date
  end
end
