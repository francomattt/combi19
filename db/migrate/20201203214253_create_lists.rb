class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :ticket_id
      t.integer :insumo_id
      t.float :price

      t.timestamps
    end
  end
end
