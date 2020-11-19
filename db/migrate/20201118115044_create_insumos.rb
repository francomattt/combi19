class CreateInsumos < ActiveRecord::Migration[6.0]
  def change
    create_table :insumos do |t|
      t.string :type
      t.integer :cant

      t.timestamps
    end
  end
end
