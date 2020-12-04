class AddColumList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :cant, :integer
  end
end
